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

-- Экспортируемые данные не выделены.

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
