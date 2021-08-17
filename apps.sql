-- --------------------------------------------------------
-- Хост:                         127.0.0.1
-- Версия сервера:               10.3.16-MariaDB - mariadb.org binary distribution
-- Операционная система:         Win64
-- HeidiSQL Версия:              11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Дамп структуры базы данных rostik
CREATE DATABASE IF NOT EXISTS `rostik` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `rostik`;

-- Дамп структуры для таблица rostik.accounts
CREATE TABLE IF NOT EXISTS `accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(35) NOT NULL,
  `email` text NOT NULL,
  `password` varchar(256) NOT NULL,
  `socialclub` varchar(255) NOT NULL,
  `ip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Дамп данных таблицы rostik.accounts: 1 rows
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;

-- Дамп структуры для таблица rostik.blips
CREATE TABLE IF NOT EXISTS `blips` (
  `id` int(11) NOT NULL,
  `sprite` int(11) NOT NULL DEFAULT 0,
  `position` text NOT NULL,
  `name` varchar(128) NOT NULL DEFAULT '',
  `scale` varchar(128) NOT NULL DEFAULT '',
  `color` int(11) NOT NULL DEFAULT 0,
  `alpha` int(11) NOT NULL DEFAULT 0,
  `dimension` int(11) NOT NULL DEFAULT 0,
  `drawDistance` tinyint(4) NOT NULL DEFAULT 0,
  `shortRange` tinyint(4) NOT NULL DEFAULT 0,
  `rotation` tinyint(4) NOT NULL DEFAULT 0,
  `radius` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы rostik.blips: ~1 rows (приблизительно)
/*!40000 ALTER TABLE `blips` DISABLE KEYS */;
INSERT INTO `blips` (`id`, `sprite`, `position`, `name`, `scale`, `color`, `alpha`, `dimension`, `drawDistance`, `shortRange`, `rotation`, `radius`) VALUES
	(1, 1, '{"x":173.63414001464844, "y":-1726.8956298828125, "z":29.292055130004883}', 'Наркотики', '0.35', 73, 0, 0, 20, 0, 0, 0);
/*!40000 ALTER TABLE `blips` ENABLE KEYS */;

-- Дамп структуры для таблица rostik.characters
CREATE TABLE IF NOT EXISTS `characters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `socialclub` int(11) DEFAULT NULL,
  `adminlvl` int(10) DEFAULT NULL,
  `xyz` text NOT NULL,
  `firstname` text NOT NULL,
  `lastname` text NOT NULL,
  `lvl` int(11) NOT NULL DEFAULT 0,
  `exp` int(11) NOT NULL DEFAULT 0,
  `health` int(3) DEFAULT NULL,
  `licenses` int(11) DEFAULT NULL,
  `money` int(11) NOT NULL DEFAULT 1000,
  `bank` int(11) DEFAULT NULL,
  `bank_num` int(11) DEFAULT NULL,
  `organization` int(11) DEFAULT NULL,
  `accid` varchar(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы rostik.characters: ~1 rows (приблизительно)
/*!40000 ALTER TABLE `characters` DISABLE KEYS */;
/*!40000 ALTER TABLE `characters` ENABLE KEYS */;

-- Дамп структуры для таблица rostik.customization
CREATE TABLE IF NOT EXISTS `customization` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gender` text NOT NULL,
  `parents` text NOT NULL,
  `features` text NOT NULL,
  `appearance` text NOT NULL,
  `hair` text NOT NULL,
  `clothes` text NOT NULL,
  `accessory` text NOT NULL,
  `tattoos` text NOT NULL,
  `eyebrowc` text NOT NULL,
  `beardc` text NOT NULL,
  `eyec` text NOT NULL,
  `blushc` text NOT NULL,
  `lipstickc` text NOT NULL,
  `chesthairc` text NOT NULL,
  `iscreated` text NOT NULL,
  `personid` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы rostik.customization: ~1 rows (приблизительно)
/*!40000 ALTER TABLE `customization` DISABLE KEYS */;
/*!40000 ALTER TABLE `customization` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
