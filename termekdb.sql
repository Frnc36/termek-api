-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2026. Ápr 29. 15:03
-- Kiszolgáló verziója: 10.4.32-MariaDB
-- PHP verzió: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `termekdb`
--
CREATE DATABASE IF NOT EXISTS `termekdb` DEFAULT CHARACTER SET utf8 COLLATE utf8_hungarian_ci;
USE `termekdb`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `termekek`
--

DROP TABLE IF EXISTS `termekek`;
CREATE TABLE IF NOT EXISTS `termekek` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nev` varchar(255) DEFAULT NULL,
  `ar` int(11) DEFAULT NULL,
  `mennyiseg` int(11) DEFAULT NULL,
  `jellemzo` text DEFAULT NULL,
  `kep` varchar(255) DEFAULT NULL,
  `kategoria` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `termekek`
--

INSERT INTO `termekek` (`id`, `nev`, `ar`, `mennyiseg`, `jellemzo`, `kep`, `kategoria`) VALUES
(1, 'Játék macskának zsíráf', 1190, 14, 'Macskamentával bevont műanyag labda macskáknak. A labdában csengőt rejtettünk el, ezáltal kedvence vadászösztöne fokozható.', 'termekepek/guluzsiraf.png', 'Plüss'),
(2, 'Tüskés Gumilabda szett', 1090, 11, 'Kis méretű, tüskés gumilabda cicák, tengerimalacok és egyéb kisállatok részére.', 'termekepek/labdak.png', 'Labda'),
(3, 'Macskajáték 2db Neon Labda', 1690, 6, 'Szerezz boldog pillanatokat a cicádnak ezzel a vidám, szemkápráztató neonlabdával', 'termekepek/tuskeslabda.png', 'Labda'),
(4, 'Macska Pálca Egérrel', 690, 10, 'Játék házi kedvencek részére. Anyaga: az állat szempontjából biztonságos anyagból készült (gumi, latex, műanyag, plüss, fa vagy fém). Ne hagyja kedvencét felügyelet nélkül a játékkal!', 'termekepek/egerjatek.png', 'Pálca'),
(5, 'Játék Egér', 690, 8, 'Anyaga: az állat szempontjából biztonságos anyagból készült (gumi, latex, műanyag, plüs, fa vagy fém) Ne hagyja felügyelet nélkül a játékkal.', 'termekepek/plusseger.png', 'Plüss'),
(6, 'Macskapálca', 1090, 5, 'A Trixie macskapálca a tökéletes játék a vadászösztönnel teli cicák számára. A strapabíró pálca végén lévő csábító játékok, mint a plüss egér, madár vagy toll, garantáltan felkeltik a macska figyelmét.', 'termekepek/palca.png', 'Pálca');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
