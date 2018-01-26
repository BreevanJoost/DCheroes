-- phpMyAdmin SQL Dump
-- version 4.7.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Gegenereerd op: 26 jan 2018 om 14:20
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
-- Database: `dcheros`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `hero`
--

CREATE TABLE `hero` (
  `heroId` int(3) NOT NULL COMMENT 'the unique heroId used as a parameter in the URL and fetched by PHP using the $_GET superblobal variable',
  `heroName` varchar(50) NOT NULL COMMENT 'the name of the hero, just a string',
  `heroImpression` text NOT NULL,
  `heroDescription` text NOT NULL COMMENT 'some information of the hero, just a string',
  `heroPower` text NOT NULL,
  `heroImage` varchar(50) NOT NULL COMMENT 'the image of the hero is strored as a string. The actual image is strored on the server. Use the string as the source of the HTML img-tag.',
  `teamId` int(3) NOT NULL COMMENT 'this is the teamId. Used as a referenc to the team table.'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `hero`
--

INSERT INTO `hero` (`heroId`, `heroName`, `heroImpression`, `heroDescription`, `heroPower`, `heroImage`, `teamId`) VALUES
(10, 'Superman', 'Superman is a fictional superhero appearing in American comic books published by DC Comics.', 'Superman is the most powerful being on planet Earth,an alien immigrant named Kal-El from the planet Krypton who was raised in Smallville, Kansas, to become an American superhero.', '- flight <br>\r\n- super-strength <br>\r\n- super-speed <br>\r\n- vision powers <br>\r\n- super-hearing <br>\r\n- super-intelligence <br>\r\n- super-breath', 'images/superman.jpg', 6),
(11, 'Batman', 'Batman is a fictional superhero appearing in American comic books published by DC Comics.', 'Batman is a fictional superhero appearing in American comic books published by DC Comics. The character was created by artist Bob Kane and writer Bill Finger,[4][5] and first appeared in Detective Comics #27 (1939). Originally named the \"Bat-Man\", the character is also referred to by such epithets as the Caped Crusader, the Dark Knight, and the World\'s Greatest Detective.', '- flight <br>\r\n- super-strength <br>\r\n- super-speed <br>\r\n- vision powers <br>\r\n- super-hearing <br>\r\n- super-intelligence <br>\r\n- super-breath', 'images/batman.jpg', 6),
(12, 'Aquaman', 'Aquaman is a fictional superhero appearing in American comic books published by DC Comics.', 'Aquaman is a fictional superhero appearing in American comic books published by DC Comics. Created by Paul Norris and Mort Weisinger, the character debuted in More Fun Comics #73 (November 1941).[1] Initially a backup feature in DC\'s anthology titles, Aquaman later starred in several volumes of a solo comic book series.', '- flight <br>\r\n- super-strength <br>\r\n- super-speed <br>\r\n- vision powers <br>\r\n- super-hearing <br>\r\n- super-intelligence <br>\r\n- super-breath', 'images/Aquaman.jpg', 6),
(13, 'Wonder Woman', 'Wonder Woman is a fictional superhero appearing in American comic books published by DC Comics.', 'Wonder Woman is a fictional superhero appearing in American comic books published by DC Comics.[2] The character is a founding member of the Justice League, goddess, and Ambassador-at-Large of the Amazon people. The character first appeared in All Star Comics #8 in October 1941 and first cover-dated on Sensation Comics #1, January 1942.', '- flight <br>\r\n- super-strength <br>\r\n- super-speed <br>\r\n- vision powers <br>\r\n- super-hearing <br>\r\n- super-intelligence <br>\r\n- super-breath', 'images/wonderwoman.jpg', 6),
(14, 'Bar Torr', 'Bar Torr is a fictional superhero appearing in American comic books published by DC Comics.', 'Superman is the most powerful being on planet Earth,an alien immigrant named Kal-El from the planet Krypton who was raised in Smallville, Kansas, to become an American superhero.', '- flight <br>\r\n- super-strength <br>\r\n- super-speed <br>\r\n- vision powers <br>\r\n- super-hearing <br>\r\n- super-intelligence <br>\r\n- super-breath', 'images/BarTorr.jpg', 7),
(15, 'Eobard Thawne', 'Eobard Thawne is a fictional superhero appearing in American comic books published by DC Comics.', 'Eobard Thawne is a fictional superhero appearing in American comic books published by DC Comics. The character was created by artist Bob Kane and writer Bill Finger,[4][5] and first appeared in Detective Comics #27 (1939). Originally named the \"Bat-Man\", the character is also referred to by such epithets as the Caped Crusader, the Dark Knight, and the World\'s Greatest Detective.', '- flight <br>\r\n- super-strength <br>\r\n- super-speed <br>\r\n- vision powers <br>\r\n- super-hearing <br>\r\n- super-intelligence <br>\r\n- super-breath', 'images/EobardThawne.png', 7),
(16, 'Iris West', 'Iris West is a fictional superhero appearing in American comic books published by DC Comics.', 'Iris West is a fictional superhero appearing in American comic books published by DC Comics. Created by Paul Norris and Mort Weisinger, the character debuted in More Fun Comics #73 (November 1941).[1] Initially a backup feature in DC\'s anthology titles, Aquaman later starred in several volumes of a solo comic book series.', '- flight <br>\r\n- super-strength <br>\r\n- super-speed <br>\r\n- vision powers <br>\r\n- super-hearing <br>\r\n- super-intelligence <br>\r\n- super-breath', 'images/IrisWest.png', 7),
(17, 'Jay Garrick', 'Jay Garrick is a fictional superhero appearing in American comic books published by DC Comics.', 'Jay Garrick is a fictional superhero appearing in American comic books published by DC Comics.[2] The character is a founding member of the Justice League, goddess, and Ambassador-at-Large of the Amazon people. The character first appeared in All Star Comics #8 in October 1941 and first cover-dated on Sensation Comics #1, January 1942.', '- flight <br>\r\n- super-strength <br>\r\n- super-speed <br>\r\n- vision powers <br>\r\n- super-hearing <br>\r\n- super-intelligence <br>\r\n- super-breath', 'images/Jason_Garrick.jpg', 7),
(18, 'Brane', 'Brane is a fictional superhero appearing in American comic books published by DC Comics.', 'Brane is the most powerful being on planet Earth,an alien immigrant named Kal-El from the planet Krypton who was raised in Smallville, Kansas, to become an American superhero.', '- flight <br>\r\n- super-strength <br>\r\n- super-speed <br>\r\n- vision powers <br>\r\n- super-hearing <br>\r\n- super-intelligence <br>\r\n- super-breath', 'images/2208004-0022.jpg', 8),
(19, 'Carrie Kelley', 'Carrie Kelley is a fictional superhero appearing in American comic books published by DC Comics.', 'Carrie Kelley is a fictional superhero appearing in American comic books published by DC Comics. The character was created by artist Bob Kane and writer Bill Finger,[4][5] and first appeared in Detective Comics #27 (1939). Originally named the \"Bat-Man\", the character is also referred to by such epithets as the Caped Crusader, the Dark Knight, and the World\'s Greatest Detective.', '- flight <br>\r\n- super-strength <br>\r\n- super-speed <br>\r\n- vision powers <br>\r\n- super-hearing <br>\r\n- super-intelligence <br>\r\n- super-breath', 'images/5888787.png', 8),
(20, 'Tris Plover', 'Tris Plover is a fictional superhero appearing in American comic books published by DC Comics.', 'Tris Plover is a fictional superhero appearing in American comic books published by DC Comics. Created by Paul Norris and Mort Weisinger, the character debuted in More Fun Comics #73 (November 1941).[1] Initially a backup feature in DC\'s anthology titles, Aquaman later starred in several volumes of a solo comic book series.', '- flight <br>\r\n- super-strength <br>\r\n- super-speed <br>\r\n- vision powers <br>\r\n- super-hearing <br>\r\n- super-intelligence <br>\r\n- super-breath', 'images/1337224-tris.jpg', 8),
(21, 'Jason Todd', 'Jason Todd is a fictional superhero appearing in American comic books published by DC Comics.', 'Jason Todd is a fictional superhero appearing in American comic books published by DC Comics.[2] The character is a founding member of the Justice League, goddess, and Ambassador-at-Large of the Amazon people. The character first appeared in All Star Comics #8 in October 1941 and first cover-dated on Sensation Comics #1, January 1942.', '- flight <br>\r\n- super-strength <br>\r\n- super-speed <br>\r\n- vision powers <br>\r\n- super-hearing <br>\r\n- super-intelligence <br>\r\n- super-breath', 'images/5600172.jpg', 8),
(22, 'Dick Grayson', 'Dick Grayson is a fictional superhero appearing in American comic books published by DC Comics.', 'Dick Grayson is the most powerful being on planet Earth,an alien immigrant named Kal-El from the planet Krypton who was raised in Smallville, Kansas, to become an American superhero.', '- flight <br>\r\n- super-strength <br>\r\n- super-speed <br>\r\n- vision powers <br>\r\n- super-hearing <br>\r\n- super-intelligence <br>\r\n- super-breath', 'images/6179158.jpg', 9),
(23, 'Enigma', 'Enigma is a fictional superhero appearing in American comic books published by DC Comics.', 'Enigma is a fictional superhero appearing in American comic books published by DC Comics. The character was created by artist Bob Kane and writer Bill Finger,[4][5] and first appeared in Detective Comics #27 (1939). Originally named the \"Bat-Man\", the character is also referred to by such epithets as the Caped Crusader, the Dark Knight, and the World\'s Greatest Detective.', '- flight <br>\r\n- super-strength <br>\r\n- super-speed <br>\r\n- vision powers <br>\r\n- super-hearing <br>\r\n- super-intelligence <br>\r\n- super-breath', 'images/1562895.jpg', 9),
(24, 'Hank Hall', 'Hank Hall is a fictional superhero appearing in American comic books published by DC Comics.', 'Hank Hall is a fictional superhero appearing in American comic books published by DC Comics. Created by Paul Norris and Mort Weisinger, the character debuted in More Fun Comics #73 (November 1941).[1] Initially a backup feature in DC\'s anthology titles, Aquaman later starred in several volumes of a solo comic book series.', '- flight <br>\r\n- super-strength <br>\r\n- super-speed <br>\r\n- vision powers <br>\r\n- super-hearing <br>\r\n- super-intelligence <br>\r\n- super-breath', 'images/2048726-hank_hall.jpg', 9),
(25, 'Damage', 'Damage is a fictional superhero appearing in American comic books published by DC Comics.', 'Damage is a fictional superhero appearing in American comic books published by DC Comics.[2] The character is a founding member of the Justice League, goddess, and Ambassador-at-Large of the Amazon people. The character first appeared in All Star Comics #8 in October 1941 and first cover-dated on Sensation Comics #1, January 1942.', '- flight <br>\r\n- super-strength <br>\r\n- super-speed <br>\r\n- vision powers <br>\r\n- super-hearing <br>\r\n- super-intelligence <br>\r\n- super-breath', 'images/1158307.jpg', 9),
(26, 'August General', 'August General is a fictional superhero appearing in American comic books published by DC Comics.', 'August General is the most powerful being on planet Earth,an alien immigrant named Kal-El from the planet Krypton who was raised in Smallville, Kansas, to become an American superhero.', '- flight <br>\r\n- super-strength <br>\r\n- super-speed <br>\r\n- vision powers <br>\r\n- super-hearing <br>\r\n- super-intelligence <br>\r\n- super-breath', 'images/1070666-august.jpg', 10),
(27, 'Tasmanian Devil', 'Tasmanian Devil is a fictional superhero appearing in American comic books published by DC Comics.', 'Tasmanian Devil is a fictional superhero appearing in American comic books published by DC Comics. The character was created by artist Bob Kane and writer Bill Finger,[4][5] and first appeared in Detective Comics #27 (1939). Originally named the \"Bat-Man\", the character is also referred to by such epithets as the Caped Crusader, the Dark Knight, and the World\'s Greatest Detective.', '- flight <br>\r\n- super-strength <br>\r\n- super-speed <br>\r\n- vision powers <br>\r\n- super-hearing <br>\r\n- super-intelligence <br>\r\n- super-breath', 'images/2029482-tasmanian_devil3.jpg', 10),
(28, 'Bushmaster', 'Bushmaster is a fictional superhero appearing in American comic books published by DC Comics.', 'Bushmaster is a fictional superhero appearing in American comic books published by DC Comics. Created by Paul Norris and Mort Weisinger, the character debuted in More Fun Comics #73 (November 1941).[1] Initially a backup feature in DC\'s anthology titles, Aquaman later starred in several volumes of a solo comic book series.', '- flight <br>\r\n- super-strength <br>\r\n- super-speed <br>\r\n- vision powers <br>\r\n- super-hearing <br>\r\n- super-intelligence <br>\r\n- super-breath', 'images/5303443-image.jpeg', 10),
(29, 'Centrix', 'Centrix is a fictional superhero appearing in American comic books published by DC Comics.', 'Centrix is a fictional superhero appearing in American comic books published by DC Comics.[2] The character is a founding member of the Justice League, goddess, and Ambassador-at-Large of the Amazon people. The character first appeared in All Star Comics #8 in October 1941 and first cover-dated on Sensation Comics #1, January 1942.', '- flight <br>\r\n- super-strength <br>\r\n- super-speed <br>\r\n- vision powers <br>\r\n- super-hearing <br>\r\n- super-intelligence <br>\r\n- super-breath', 'images/118889-175155-centrix.jpg', 10),
(31, 'Damian Wayne', 'Damian Wayne is a fictional superhero appearing in American comic books published by DC Comics.', 'Damian Wayne is a fictional superhero appearing in American comic books published by DC Comics.[2] The character is a founding member of the Justice League, goddess, and Ambassador-at-Large of the Amazon people. The character first appeared in All Star Comics #8 in October 1941 and first cover-dated on Sensation Comics #1, January 1942.', '- flight <br>\r\n- super-strength <br>\r\n- super-speed <br>\r\n- vision powers <br>\r\n- super-hearing <br>\r\n- super-intelligence <br>\r\n- super-breath', 'images/Godspeed.jpg', 9),
(32, 'Damian Wayne', 'Damian Wayne is a fictional superhero appearing in American comic books published by DC Comics.', 'Damian Wayne is a fictional superhero appearing in American comic books published by DC Comics.[2] The character is a founding member of the Justice League, goddess, and Ambassador-at-Large of the Amazon people. The character first appeared in All Star Comics #8 in October 1941 and first cover-dated on Sensation Comics #1, January 1942.', '- flight <br>\r\n- super-strength <br>\r\n- super-speed <br>\r\n- vision powers <br>\r\n- super-hearing <br>\r\n- super-intelligence <br>\r\n- super-breath', 'images/5432021-robin_lr6.jpg', 8),
(33, 'Wallace West', 'Wallace West is a fictional superhero appearing in American comic books published by DC Comics.', 'Wallace West is a fictional superhero appearing in American comic books published by DC Comics.[2] The character is a founding member of the Justice League, goddess, and Ambassador-at-Large of the Amazon people. The character first appeared in All Star Comics #8 in October 1941 and first cover-dated on Sensation Comics #1, January 1942.', '- flight <br>\r\n- super-strength <br>\r\n- super-speed <br>\r\n- vision powers <br>\r\n- super-hearing <br>\r\n- super-intelligence <br>\r\n- super-breath', 'images/Flash_W.jpg', 7),
(34, 'Freedom Beast', 'Freedom Beast is a fictional superhero appearing in American comic books published by DC Comics.', 'Freedom Beast is a fictional superhero appearing in American comic books published by DC Comics.[2] The character is a founding member of the Justice League, goddess, and Ambassador-at-Large of the Amazon people. The character first appeared in All Star Comics #8 in October 1941 and first cover-dated on Sensation Comics #1, January 1942.', '- flight <br>\r\n- super-strength <br>\r\n- super-speed <br>\r\n- vision powers <br>\r\n- super-hearing <br>\r\n- super-intelligence <br>\r\n- super-breath', 'images/4987594.png', 10),
(35, 'August Heart', 'August Heart is a fictional superhero appearing in American comic books published by DC Comics.', 'August Heart is a fictional superhero appearing in American comic books published by DC Comics.[2] The character is a founding member of the Justice League, goddess, and Ambassador-at-Large of the Amazon people. The character first appeared in All Star Comics #8 in October 1941 and first cover-dated on Sensation Comics #1, January 1942.', '- flight <br>\r\n- super-strength <br>\r\n- super-speed <br>\r\n- vision powers <br>\r\n- super-hearing <br>\r\n- super-intelligence <br>\r\n- super-breath', 'images/Godspeed.jpg', 6);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `rating`
--

CREATE TABLE `rating` (
  `ratingId` int(3) NOT NULL COMMENT 'unique rating is, auto incremented',
  `heroId` int(3) NOT NULL COMMENT 'the heroId used as reference to the hero table, can''t be unique in thie table',
  `rating` int(3) NOT NULL COMMENT 'rating is defined as an integer from 0 (min) to 10 (max)',
  `ratingDate` varchar(20) NOT NULL COMMENT 'the date of this rating. Dates are presented as an integer (timestamp) and displayed as a human readable date and time string using the PHP strftime() function',
  `ratingReview` text NOT NULL COMMENT 'a textual review added by the user\\nthe form where the user can rate the hero by using stars (radio-buttons)'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `rating`
--

INSERT INTO `rating` (`ratingId`, `heroId`, `rating`, `ratingDate`, `ratingReview`) VALUES
(23, 10, 8, '2018-01-26 11:19:25', '4 sterren!\r\n\r\nSuperman is BEAST!!'),
(24, 11, 9, '2018-01-26 11:21:11', '4,5 Sterren!\r\n\r\nsper goede hero!');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `team`
--

CREATE TABLE `team` (
  `teamId` int(3) NOT NULL COMMENT 'unique teamId can be used as a parameter in the URL and fetched using the $_GET variable',
  `teamName` varchar(50) NOT NULL COMMENT 'team name, just an ordinary string',
  `teamDescription` text NOT NULL COMMENT 'team description, just a string',
  `teamImage` varchar(100) NOT NULL COMMENT 'team image, stored as a string and used with the source of the HTML-tag'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `team`
--

INSERT INTO `team` (`teamId`, `teamName`, `teamDescription`, `teamImage`) VALUES
(6, 'Justice League <br /> - 5 members', '', 'images/Justice-League-logo.png'),
(7, 'Flash Family <br /> - 5 members', '', 'images/FlashfamilyLogo.png'),
(8, 'Batman and Robin <br /> - 5 members', '', 'images/batman-robin-logo.jpg'),
(9, 'Teen Titans <br /> - 5 members', '', 'images/teen_titans_logo.png'),
(10, 'Guardians <br /> - 5 members', '', 'images/Guardians_Logo.png');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `hero`
--
ALTER TABLE `hero`
  ADD PRIMARY KEY (`heroId`);

--
-- Indexen voor tabel `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`ratingId`);

--
-- Indexen voor tabel `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`teamId`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `hero`
--
ALTER TABLE `hero`
  MODIFY `heroId` int(3) NOT NULL AUTO_INCREMENT COMMENT 'the unique heroId used as a parameter in the URL and fetched by PHP using the $_GET superblobal variable', AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT voor een tabel `rating`
--
ALTER TABLE `rating`
  MODIFY `ratingId` int(3) NOT NULL AUTO_INCREMENT COMMENT 'unique rating is, auto incremented', AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT voor een tabel `team`
--
ALTER TABLE `team`
  MODIFY `teamId` int(3) NOT NULL AUTO_INCREMENT COMMENT 'unique teamId can be used as a parameter in the URL and fetched using the $_GET variable', AUTO_INCREMENT=11;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
