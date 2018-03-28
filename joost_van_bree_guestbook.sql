-- phpMyAdmin SQL Dump
-- version 4.7.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Gegenereerd op: 28 mrt 2018 om 14:50
-- Serverversie: 5.7.19
-- PHP-versie: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `joost_van_bree_guestbook`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `guestbook`
--

CREATE TABLE `guestbook` (
  `guestBookId` int(5) NOT NULL,
  `firstName` varchar(100) NOT NULL,
  `lastName` varchar(100) NOT NULL,
  `email` varchar(30) NOT NULL,
  `webAdress` varchar(30) NOT NULL,
  `ratingDate` varchar(20) NOT NULL,
  `insertion` varchar(20) NOT NULL,
  `messageTitle` varchar(20) NOT NULL,
  `Message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `guestbook`
--

INSERT INTO `guestbook` (`guestBookId`, `firstName`, `lastName`, `email`, `webAdress`, `ratingDate`, `insertion`, `messageTitle`, `Message`) VALUES
(28, 'Jordi', 'Kuipers', 'jordikuipers@gmail.com', 'jordikuipers.nl', '2018-03-01 10:24:03', '', 'GuestBook', 'Helemaal prima!'),
(43, 'Joost', 'Bree', 'breevanjoost@gmail.com', 'joostvanbree.nl', '2018-03-28 15:50:16', 'van', 'test', 'testen'),
(44, 'Joost', 'Bree', 'breevanjoost@gmail.com', 'joostvanbree.nl', '2018-03-28 15:52:21', 'van', 'test', 'Halloooo'),
(45, 'Max', 'Rijt', 'emailvanmax@hotmail.com', 'maxvanderijt.nl', '2018-03-28 16:34:01', 'van de', 'Message Title', 'My Message'),
(46, 'Stan', 'Verberne', 'stanverberne@hotmail.com', 'stanverberne.nl', '2018-03-28 16:36:29', '', 'Dit is mijn titel', 'Dit is mijn message');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `guestbook`
--
ALTER TABLE `guestbook`
  ADD PRIMARY KEY (`guestBookId`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `guestbook`
--
ALTER TABLE `guestbook`
  MODIFY `guestBookId` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
