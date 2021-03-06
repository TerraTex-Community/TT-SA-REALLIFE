-- phpMyAdmin SQL Dump
-- version 4.2.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Erstellungszeit: 13. Nov 2014 um 18:19
-- Server Version: 10.0.10-MariaDB
-- PHP-Version: 5.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Datenbank: `geramy_reallife`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `archievments`
--

CREATE TABLE IF NOT EXISTS `archievments` (
`ID` int(11) NOT NULL,
  `Nickname` varchar(255) NOT NULL,
  `Erfolg_Fischermeister` int(11) NOT NULL DEFAULT '0',
  `Punkte_Fischermeister` int(11) NOT NULL DEFAULT '0',
  `Erfolg_MrLicenses` int(11) NOT NULL DEFAULT '0',
  `Erfolg_First_50` int(11) NOT NULL DEFAULT '0',
  `Erfolg_First_100` int(11) NOT NULL DEFAULT '0',
  `Erfolg_First_1000` int(11) NOT NULL DEFAULT '0',
  `Erfolg_Millionaer` int(11) NOT NULL DEFAULT '0',
  `Erfolg_10erFahrzeugrausch` int(11) NOT NULL DEFAULT '0',
  `Erfolg_20erFahrzeugrausch` int(11) NOT NULL DEFAULT '0',
  `Erfolg_50erFahrzeugrausch` int(11) NOT NULL DEFAULT '0',
  `Erfolg_Busmeister` int(11) NOT NULL DEFAULT '0',
  `Punkte_Busmeister` int(11) NOT NULL DEFAULT '0',
  `Erfolg_Lotto1` int(11) NOT NULL DEFAULT '0',
  `Erfolg_Lotto2` int(11) NOT NULL DEFAULT '0',
  `Erfolg_Lotto3` int(11) NOT NULL DEFAULT '0',
  `Erfolg_Rubbellosgluck` int(11) NOT NULL DEFAULT '0',
  `Erfolg_10erLos` int(11) NOT NULL DEFAULT '0',
  `Erfolg_Benzin_leer` int(11) NOT NULL DEFAULT '0',
  `Erfolg_Mein_erstes_Geld` int(11) NOT NULL DEFAULT '0',
  `Erfolg_MyOwnHome` int(11) NOT NULL DEFAULT '0',
  `Erfolg_MyOwnBiz` int(11) NOT NULL DEFAULT '0',
  `Erfolg_Autoeinsteiger` int(11) NOT NULL DEFAULT '0',
  `Erfolg_Mein_erstes_Brot` int(11) NOT NULL DEFAULT '0',
  `Erfolg_Ersatztanke` int(11) NOT NULL DEFAULT '0',
  `Erfolg_Fraktionseinsteiger` int(11) NOT NULL DEFAULT '0',
  `Erfolg_10Hufeisen` int(11) NOT NULL DEFAULT '0',
  `Erfolg_100Hufeisen` int(11) NOT NULL DEFAULT '0',
  `Erfolg_1000Hufeisen` int(11) NOT NULL DEFAULT '0',
  `Punkte_Meisterpilot` int(11) NOT NULL DEFAULT '0',
  `Erfolg_Meisterpilot` int(11) NOT NULL DEFAULT '0',
  `Punkte_Meistertrucker` int(11) NOT NULL DEFAULT '0',
  `Erfolg_Meistertrucker` int(11) NOT NULL DEFAULT '0',
  `Erfolg_KMPokal` int(11) NOT NULL DEFAULT '0',
  `Erfolg_TerraFriend` int(11) NOT NULL DEFAULT '0',
  `Punkte_Strassenreiniger` int(11) NOT NULL DEFAULT '0',
  `Erfolg_Strassenreiniger` int(11) NOT NULL DEFAULT '0',
  `Punkte_Meeresreiniger` int(11) NOT NULL DEFAULT '0',
  `Erfolg_Meeresreiniger` int(11) NOT NULL DEFAULT '0',
  `Punkte_Muellsammler` int(11) NOT NULL DEFAULT '0',
  `Erfolg_Muellsammler` int(11) NOT NULL DEFAULT '0',
  `Punkte_Pizzaraser` int(11) NOT NULL DEFAULT '0',
  `Erfolg_Pizzaraser` int(11) NOT NULL DEFAULT '0',
  `Punkte_Farmerjunge` int(11) NOT NULL DEFAULT '0',
  `Erfolg_Farmerjunge` int(11) NOT NULL DEFAULT '0',
  `Punkte_Steinraeumer` int(11) NOT NULL DEFAULT '0',
  `Erfolg_Steinraeumer` int(11) NOT NULL DEFAULT '0',
  `Punkte_Langlaeufer` float NOT NULL DEFAULT '0',
  `Erfolg_Langlaeufer` int(11) NOT NULL DEFAULT '0',
  `Punkte_Rekordschwimmer` float NOT NULL DEFAULT '0',
  `Erfolg_Rekordschwimmer` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=56525 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `attackerladen`
--

CREATE TABLE IF NOT EXISTS `attackerladen` (
  `ID` int(11) NOT NULL,
  `toFraktion` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `attackerladen`
--

INSERT INTO `attackerladen` (`ID`, `toFraktion`) VALUES
(1, 2),
(2, 2),
(3, 11),
(4, 6),
(5, 11),
(6, 11),
(7, 11),
(8, 11);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ban`
--

CREATE TABLE IF NOT EXISTS `ban` (
`ID` int(11) NOT NULL,
  `Nickname` varchar(50) CHARACTER SET latin1 NOT NULL,
  `Serial` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `IP` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `Grund` longtext COLLATE utf8_bin NOT NULL,
  `Admin` varchar(50) CHARACTER SET latin1 NOT NULL DEFAULT 'terratex',
  `Bandatum` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Beweistext` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT 'keiner'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=3524 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `beleidigungsystem`
--

CREATE TABLE IF NOT EXISTS `beleidigungsystem` (
`ID` int(11) NOT NULL,
  `Beleidigung` varchar(250) NOT NULL,
  `Type` int(11) NOT NULL DEFAULT '0',
  `connectedTo` varchar(250) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=48 ;

--
-- Daten für Tabelle `beleidigungsystem`
--

INSERT INTO `beleidigungsystem` (`ID`, `Beleidigung`, `Type`, `connectedTo`) VALUES
(3, 'hurensohn', 1, NULL),
(4, 'hundesohn', 1, NULL),
(5, 'bastard', 1, NULL),
(6, 'wixxer', 1, NULL),
(7, 'mistgeburt', 0, NULL),
(8, 'wichser', 1, 'wixxer'),
(9, 'huso', 1, 'hurensohn'),
(10, 'mutterficker', 1, 'hurensohn'),
(11, 'hrsn', 1, 'hurensohn'),
(12, 'fotze', 0, NULL),
(13, 'spasst', 0, NULL),
(14, 'spast', 0, 'spasst'),
(15, 'arsch', 0, NULL),
(16, 'arschloch', 0, NULL),
(17, 'fick', 0, NULL),
(18, 'schlampe', 0, NULL),
(19, 'hure', 0, NULL),
(20, 'nutte', 0, NULL),
(21, 'wichs', 0, 'wixxer'),
(22, 'anal', 0, NULL),
(23, 'penis', 0, NULL),
(24, 'mutter', 0, NULL),
(25, 'mudder', 0, 'mutter'),
(26, 'muda', 0, 'mutter'),
(27, 'mudda', 0, 'mutter'),
(28, 'miststück', 0, NULL),
(29, 'muschi', 0, NULL),
(30, 'pimmel', 0, NULL),
(31, 'spacko', 0, NULL),
(33, 'spack', 0, 'spacko'),
(34, 'pisser', 0, NULL),
(35, 'mother', 0, NULL),
(36, 'fucker', 0, NULL),
(37, 'motherfucker', 1, NULL),
(38, 'hurenschmock', 1, NULL),
(40, 'amina', 0, 'koyim'),
(41, 'koyim', 0, NULL),
(42, 'amcik', 0, 'fotze'),
(43, 'anani', 0, 'mutter'),
(44, 'sikerim', 0, 'fick'),
(46, 'puta', 0, NULL),
(47, 'wixer', 1, 'wixxer');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `bewaehrungsstrafen`
--

CREATE TABLE IF NOT EXISTS `bewaehrungsstrafen` (
`ID` int(11) NOT NULL,
  `Nickname` varchar(250) NOT NULL,
  `until` int(11) NOT NULL DEFAULT '0',
  `warn` int(11) DEFAULT '0',
  `tban` int(11) DEFAULT '0',
  `perma` int(11) DEFAULT '0',
  `Grund` text,
  `Adminname` varchar(250) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `blacklist`
--

CREATE TABLE IF NOT EXISTS `blacklist` (
`ID` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Fraktion` int(11) NOT NULL DEFAULT '0',
  `Von` varchar(255) NOT NULL DEFAULT 'none',
  `Grund` varchar(255) NOT NULL DEFAULT 'none'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10564 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `buissness`
--

CREATE TABLE IF NOT EXISTS `buissness` (
`ID` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Preis` int(11) NOT NULL,
  `Kasse` float NOT NULL,
  `x` float NOT NULL,
  `y` float NOT NULL,
  `z` float NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Daten für Tabelle `buissness`
--

INSERT INTO `buissness` (`ID`, `Name`, `Preis`, `Kasse`, `x`, `y`, `z`) VALUES
(1, 'Burgershot', 150000, 940631, 1206.24, -917.818, 43.076),
(2, 'PizzaStack', 150000, 12492.9, 2105.09, -1802.86, 13.5547),
(3, 'CluckinBell', 150000, 8047.49, 2420.71, -1503.81, 24),
(4, 'Sprunk', 150000, 119.62, 2852.51, -1533.15, 11.0938),
(5, 'PaynSpray', 150000, 17058.4, 1029.19, -1030.36, 32.0561),
(6, 'Tunning', 150000, 117108, 1047.45, -1027.11, 32.1016),
(7, 'Tankstelle', 150000, 105551, 1010.41, -929.694, 42.3281),
(8, '24/7', 150000, 144700, 1312.66, -898.358, 39.5781),
(9, 'Bar & Strip Industries', 150000, 5677.72, 1835.75, -1687.61, 13.3765),
(10, 'Unitel Telefon', 150000, 29799.3, 1579.45, -1854.68, 13.5127),
(11, 'Los Santos Arena', 150000, 6567.55, 2727.84, -1827.66, 11.8438),
(12, 'SexShop', 150000, 14651.4, 2086.43, 2080.12, 11.0579),
(13, 'Caligulas Casino', 150000, 613.11, 2194.57, 1682.27, 12.3672),
(14, 'Maut', 150000, 29852.5, 1654, -51.6, 36.6),
(15, 'Binco', 150000, 24141.7, 458.7, -1495.3, 31.1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `cp_deletes`
--

CREATE TABLE IF NOT EXISTS `cp_deletes` (
`ID` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=51572 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `data_fraktions_namen`
--

CREATE TABLE IF NOT EXISTS `data_fraktions_namen` (
  `ID` int(11) NOT NULL,
  `Name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `data_fraktions_namen`
--

INSERT INTO `data_fraktions_namen` (`ID`, `Name`) VALUES
(0, 'Zivilist'),
(1, 'San Andreas Police Department'),
(2, 'Grove Street'),
(3, 'News'),
(4, 'Taxi'),
(5, 'Sondereinsatzkommando'),
(6, 'Legion of Los Santos '),
(7, 'National Akademie of Military Education'),
(8, 'The Black Aliens'),
(9, 'LVPD (gestrichen)'),
(10, 'San Andreas Medics'),
(11, 'Cash Force'),
(12, 'Pink Panthers');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `data_fraktions_raenge`
--

CREATE TABLE IF NOT EXISTS `data_fraktions_raenge` (
`ID` int(11) NOT NULL,
  `FrakID` int(11) NOT NULL,
  `RangID` int(11) NOT NULL,
  `Name` varchar(250) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=74 ;

--
-- Daten für Tabelle `data_fraktions_raenge`
--

INSERT INTO `data_fraktions_raenge` (`ID`, `FrakID`, `RangID`, `Name`) VALUES
(1, 0, 0, 'Kein Rang'),
(2, 1, 1, 'Rekrut'),
(3, 1, 2, 'Officer'),
(4, 1, 3, 'Sergeant'),
(5, 1, 4, 'Inspector'),
(6, 1, 5, 'Superintendent'),
(7, 1, 6, 'Chief'),
(8, 2, 1, 'Wannabe'),
(9, 2, 2, 'Untertane'),
(10, 2, 3, 'Gettofreak'),
(11, 2, 4, 'Dealer'),
(12, 2, 5, 'Underboss'),
(13, 2, 6, 'Big Boss'),
(14, 3, 1, 'Praktikant'),
(15, 3, 2, 'Anzeiger'),
(16, 3, 3, 'Reporter'),
(17, 3, 4, 'Chefreporter'),
(18, 3, 5, 'Redakteur'),
(19, 3, 6, 'Chefredakteur'),
(20, 7, 1, 'Rekrut'),
(21, 7, 2, 'Fähnrich'),
(22, 7, 3, 'Ausbilder'),
(23, 7, 4, 'Hauptausbilder'),
(24, 7, 5, 'Oberleutnant'),
(25, 7, 6, 'General'),
(26, 4, 1, 'Praktikant'),
(27, 4, 2, 'Freiarbeiter'),
(28, 4, 3, 'Angestellter'),
(29, 4, 4, 'Abteilungsleiter'),
(30, 4, 5, 'Vice-Direktor'),
(31, 4, 6, 'Direktor'),
(32, 8, 1, 'Rekrut'),
(33, 8, 2, 'Anwärter'),
(34, 8, 3, 'Mitglied'),
(35, 8, 4, 'Intrigant'),
(36, 8, 5, 'Geschäftsführer'),
(37, 8, 6, 'Firmenchef'),
(38, 9, 1, 'Rekrut'),
(39, 9, 2, 'Officer'),
(40, 9, 3, 'Sergeant'),
(41, 9, 4, 'Inspector'),
(42, 9, 5, 'Superintendent'),
(43, 9, 6, 'Chief'),
(44, 5, 1, 'Rekrut'),
(45, 5, 2, 'Mitarbeiter'),
(46, 5, 3, 'Agent'),
(47, 5, 4, 'Special-Agent'),
(48, 5, 5, 'SEK Vice-Präsident'),
(49, 5, 6, 'SEK Präsident'),
(50, 10, 1, 'Krankenwagenfahrer'),
(51, 10, 2, 'Krankenhelfer'),
(52, 10, 3, 'Sanitäter'),
(53, 10, 4, 'Arzthelfer'),
(54, 10, 5, 'Notarzt'),
(55, 10, 6, 'Chefarzt'),
(56, 11, 1, 'Anwärter'),
(57, 11, 2, 'Wachhund'),
(58, 11, 3, 'Rausschmeißer'),
(59, 11, 4, 'Geldeintreiber'),
(60, 11, 5, 'Underboss'),
(61, 11, 6, 'Big Boss'),
(62, 6, 1, 'Wannabe'),
(63, 6, 2, 'Untertane'),
(64, 6, 3, 'Waffenhängst'),
(65, 6, 4, 'Unterdrücker'),
(66, 6, 5, 'Underboss'),
(67, 6, 6, 'Big Boss'),
(68, 12, 1, 'Wannabe'),
(69, 12, 2, 'Untertane'),
(70, 12, 3, 'Gettofreak'),
(71, 12, 4, 'Dealer'),
(72, 12, 5, 'Underboss'),
(73, 12, 6, 'Big Boss');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `data_jobnamen`
--

CREATE TABLE IF NOT EXISTS `data_jobnamen` (
  `ID` int(11) NOT NULL,
  `Name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `data_jobnamen`
--

INSERT INTO `data_jobnamen` (`ID`, `Name`) VALUES
(0, 'Kein Job'),
(1, 'Fischer'),
(2, 'Drogendealer'),
(3, 'Müllmann'),
(4, 'Busfahrer'),
(5, 'Mechaniker'),
(6, 'Detektiv'),
(7, 'Hitman'),
(8, 'Pizzalieferant'),
(9, 'Anwalt'),
(10, 'Waffendealer'),
(11, 'Trucker'),
(12, 'Pilot'),
(13, 'Straßenreiniger'),
(14, 'Farmer'),
(15, 'Bergwerksarbeiter'),
(16, 'Nutte'),
(17, 'Meeresreiniger'),
(18, 'Hotdogverkäufer');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `dev_beta`
--

CREATE TABLE IF NOT EXISTS `dev_beta` (
`ID` int(11) NOT NULL,
  `Nickname` varchar(250) CHARACTER SET latin1 NOT NULL,
  `fromTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `toTimestamp` timestamp NULL DEFAULT NULL,
  `Kommentar` text
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=28 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `drivein`
--

CREATE TABLE IF NOT EXISTS `drivein` (
`ID` int(11) NOT NULL,
  `x` float NOT NULL,
  `y` float NOT NULL,
  `z` float NOT NULL,
  `typ` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Daten für Tabelle `drivein`
--

INSERT INTO `drivein` (`ID`, `x`, `y`, `z`, `typ`) VALUES
(2, 1214.11, -904.675, 41.9216, 'burger'),
(3, 2411.4, -1488.34, 22.8281, 'huhn'),
(4, 2396.53, -1917.86, 12.3828, 'huhn'),
(5, 1856.77, 2082.12, 9.52797, 'burger'),
(6, 1168.47, 2083.04, 9.52502, 'burger'),
(7, 2486.99, 2021.15, 9.52592, 'burger'),
(8, -2345.55, 1022.41, 49.4006, 'burger'),
(9, -2352.52, -153.615, 34.0248, 'burger'),
(10, 800.689, -1629.59, 12.0874, 'burger');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `dutycounter`
--

CREATE TABLE IF NOT EXISTS `dutycounter` (
`ID` int(11) NOT NULL,
  `Nickname` varchar(250) CHARACTER SET latin1 NOT NULL,
  `timestamp` int(20) NOT NULL DEFAULT '0',
  `online` int(11) NOT NULL DEFAULT '0',
  `dutycops` int(11) NOT NULL DEFAULT '0',
  `idcops` int(11) NOT NULL DEFAULT '0',
  `dutymedic` int(11) NOT NULL DEFAULT '0',
  `dutytaxi` int(11) NOT NULL DEFAULT '0',
  `idname` int(11) DEFAULT '0',
  `datum` date DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=87081 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `emails`
--

CREATE TABLE IF NOT EXISTS `emails` (
`ID` int(11) NOT NULL,
  `Empfaenger` varchar(250) NOT NULL,
  `Sender` varchar(250) NOT NULL,
  `Betreff` text NOT NULL,
  `Inhalt` longtext NOT NULL,
  `Datum` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `neu` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=588 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `faq`
--

CREATE TABLE IF NOT EXISTS `faq` (
`ID` int(11) NOT NULL,
  `Frage` mediumtext NOT NULL,
  `Antwort` mediumtext NOT NULL,
  `katID` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Daten für Tabelle `faq`
--

INSERT INTO `faq` (`ID`, `Frage`, `Antwort`, `katID`) VALUES
(1, 'Wie kann ich mein Passwort ändern?', 'Zum Passwort ändern einfach mit den Ingame-Login-Daten auf cp.tt-rl.de einloggen und unter Einstellungen das Passwort ändern.', 3),
(2, 'Wie kann ich mich in einer Fraktion bewerben?', 'Um dich bei einer Fraktion bewerben zu können, musst du dich im Forum www.tt-rl.de anmelden. Dort kannst du in dem Bewerbungsforum der entsprechenden Fraktion ein Bewerbungsthread posten.', 4),
(3, 'Warum ist mein Auto immer abgeschleppt, wenn ich es respawne?', 'Nach dem Kauf oder dem auslösen aus dem LSPD muss das Fahrzeug erst mit /park geparkt werden.', 5),
(4, 'Ich habe mich in ein Haus eingemietet und komme nun nicht mehr raus.', 'Ein Haus ist standardmäßig abgeschlossen. Als Mieter kannst du es mit /hlock aufschließen und es mit /out verlassen.', 6),
(5, 'Wie erreiche ich ein Supporter / Moderator?', 'Uns kannst du jederzeit über /report oder im Forum unter www.tt-rl.de erreichen.', 4),
(6, 'Wieso erhalte ich mein Gehalt beim Jobben nicht?', '[Gilt ab Update 3.2] Bei den Jobs gibt es verschiedene Arten, wann und wie die Vergütung bezahlt wird. Alle Bezahlungen mit der Bezeichnung ''Gehalt'' werden beim PayDay als sonstiges Gehalt ausgezahlt.', 4);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `faq_kat`
--

CREATE TABLE IF NOT EXISTS `faq_kat` (
`ID` int(11) NOT NULL,
  `kat` varchar(250) NOT NULL,
  `order` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Daten für Tabelle `faq_kat`
--

INSERT INTO `faq_kat` (`ID`, `kat`, `order`) VALUES
(3, 'Account', 0),
(4, 'Allgemein', 10),
(5, 'Fahrzeuge', 20),
(6, 'Häuser', 30);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `frakkasse_zahlungen`
--

CREATE TABLE IF NOT EXISTS `frakkasse_zahlungen` (
`ID` int(11) NOT NULL,
  `Fraktion` int(11) NOT NULL DEFAULT '0',
  `Typ` int(11) NOT NULL DEFAULT '1',
  `Betrag` int(11) NOT NULL DEFAULT '0',
  `Datum` int(11) NOT NULL DEFAULT '0',
  `real_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Name` varchar(255) NOT NULL,
  `Grund` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `fraktionskasse`
--

CREATE TABLE IF NOT EXISTS `fraktionskasse` (
  `FrakID` int(11) NOT NULL,
  `Munition` int(11) NOT NULL,
  `Kasse` float NOT NULL,
  `Drogen` int(11) NOT NULL DEFAULT '0',
  `Steuersatz` int(11) NOT NULL DEFAULT '5',
  `gehalt` int(11) NOT NULL DEFAULT '0',
  `max_members` int(11) NOT NULL DEFAULT '20'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `fraktionskasse`
--

INSERT INTO `fraktionskasse` (`FrakID`, `Munition`, `Kasse`, `Drogen`, `Steuersatz`, `gehalt`, `max_members`) VALUES
(1, 0, 0, 0, 1, 0, 30),
(2, 0, 0, 0, 1, 0, 15),
(3, 0, 0, 0, 1, 0, 20),
(4, 0, 0, 0, 1, 0, 20),
(5, 0, 0, 0, 1, 0, 20),
(6, 0, 0, 0, 1, 0, 15),
(7, 0, 0, 0, 1, 0, 20),
(8, 0, 0, 0, 1, 0, 20),
(9, 0, 0, 0, 1, 0, 20),
(10, 0, 0, 0, 1, 0, 20),
(11, 0, 0, 0, 1, 0, 15),
(12, 0, 0, 0, 1, 0, 15);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `gutschriften`
--

CREATE TABLE IF NOT EXISTS `gutschriften` (
`ID` int(11) NOT NULL,
  `Nickname` varchar(255) NOT NULL,
  `Grund` text NOT NULL,
  `Geld` int(11) NOT NULL DEFAULT '0',
  `VehSlots` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1828 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `haussys_hdb`
--

CREATE TABLE IF NOT EXISTS `haussys_hdb` (
`ID` int(11) NOT NULL,
  `IRID` int(11) NOT NULL DEFAULT '0',
  `CoordX` float NOT NULL DEFAULT '0',
  `CoordY` float NOT NULL DEFAULT '0',
  `CoordZ` float NOT NULL DEFAULT '0',
  `Preis` int(11) NOT NULL DEFAULT '0',
  `Miete` int(11) NOT NULL DEFAULT '0',
  `Kasse` int(11) NOT NULL DEFAULT '0',
  `city` int(11) NOT NULL DEFAULT '0' COMMENT '0=LS; 1=LV; 2=sonstiges Land; 3= nicht handelbar',
  `QM` int(11) NOT NULL DEFAULT '0' COMMENT 'Quadratmeter (geschätzte Zahl für Mögliche Innenraum-Größe)',
  `Stockwerke` int(11) NOT NULL DEFAULT '0',
  `Wert` int(11) NOT NULL DEFAULT '0' COMMENT '0=> Arm; 1=> Mittel; 2=> Luxus',
  `Beschreibung` text COMMENT 'Beschreibung für DB'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=133 ;

--
-- Daten für Tabelle `haussys_hdb`
--

INSERT INTO `haussys_hdb` (`ID`, `IRID`, `CoordX`, `CoordY`, `CoordZ`, `Preis`, `Miete`, `Kasse`, `city`, `QM`, `Stockwerke`, `Wert`, `Beschreibung`) VALUES
(1, 27, 1653.96, -1655.43, 22.5156, 10000000, 600, 2900, 0, 2500, 26, 2, 'Geramys Haus'),
(2, 5, 2067.96, -1628.97, 13.8762, 28000, 25, 0, 0, 126, 1, 0, 'GroveStreet'),
(3, 19, 2068.19, -1643.9, 13.8058, 25000, 0, 0, 0, 101, 1, 0, 'Grove Street'),
(4, 23, 254.841, -1367.02, 53.1094, 1800000, 550, 4650, 0, 518, 2, 2, 'Villa Vinewood'),
(5, 20, 298.242, -1338.05, 53.4415, 1200000, 0, 0, 0, 200, 2, 2, 'Villa Vinewood'),
(6, 26, 2479.62, -1063.83, 66.9982, 16000, 150, 3924, 0, 65, 1, 0, 'gammelwood'),
(7, 18, 827.991, -858.31, 70.3308, 500000, 300, 0, 0, 190, 1, 1, 'Vinewood'),
(8, 23, 980.477, -677.268, 121.976, 3500000, 510, 360, 0, 680, 3, 2, 'Vinewoodvilla'),
(9, 5, 657.229, -1652.62, 15.4062, 52000, 570, 3406, 0, 147, 1, 0, 'Beach'),
(10, 25, 1981.61, -1682.93, 17.0538, 350000, 450, 150, 0, 174, 2, 1, 'Alhambra'),
(11, 18, 1421.76, -886.055, 50.6798, 560000, 155, 0, 0, 242, 2, 1, 'vinewood'),
(12, 8, 2808.07, -1176.04, 25.3798, 420000, 200, 0, 0, 358, 2, 1, 'Stand-bohrinsel'),
(13, 8, 2808.16, -1190.38, 25.3402, 420000, 225, 0, 0, 358, 2, 1, 'strand-bohrinsel'),
(14, 10, 1242.37, -1075.36, 31.5547, 650000, 200, 0, 0, 227, 3, 1, 'Nahe Bank'),
(15, 29, 1285.1, -1065.78, 31.6789, 650000, 350, 11200, 0, 227, 3, 1, 'bank'),
(16, 9, 1242.45, -1100.55, 27.9766, 650000, 675, 9275, 0, 227, 3, 1, 'bank'),
(17, 0, 1285.02, -1091.39, 28.2578, 650000, 300, 0, 0, 227, 3, 1, 'bank'),
(18, 16, 870.386, -25.2002, 63.9635, 10000, 65, 46, 0, 50, 1, 0, 'im wald'),
(19, 15, 645.976, -1117.43, 44.207, 1200000, 600, 400, 0, 555, 1, 2, 'Vinewood'),
(20, 5, 1684.96, -2098.16, 13.8343, 65000, 150, 1230, 0, 152, 1, 0, 'bahnhof'),
(21, 26, 2290.52, -1796.02, 13.5469, 220000, 400, 0, 0, 266, 2, 0, 'arena'),
(22, 5, 2307.53, -1785.73, 13.5569, 220000, 400, 2775, 0, 226, 2, 0, 'arena'),
(23, 7, 300.303, -1154.51, 81.391, 3200000, 250, 0, 3, 580, 2, 2, 'tommys haus'),
(24, 4, 1298.49, -798.503, 84.1406, 5000000, 800, 25700, 0, 1500, 3, 2, 'Maddogs'),
(25, 1, 2287.52, -1080.9, 48.1097, 90000, 300, 34850, 0, 428, 2, 0, 'komisches haus'),
(26, 19, -2552.03, 2266.58, 5.47552, 450000, 0, 0, 2, 140, 1, 1, 'Haus in Bayside'),
(27, 6, -2523.69, 2239.19, 5.39844, 490000, 600, 0, 2, 190, 1, 1, 'bayside'),
(28, 5, 1715.19, -2124.83, 14.0566, 85000, 150, 980, 0, 174, 1, 0, 'airportgegend'),
(29, 26, 1332.05, -633.037, 109.135, 2250000, 400, 48700, 0, 265, 1, 2, 'vinewood'),
(30, 16, 977.623, -771.456, 112.203, 2500000, 500, 0, 0, 273, 2, 2, 'Vinewood Holzhaus'),
(31, 10, 2782.17, -1306.42, 38.8717, 987654, 300, 1250, 0, 262, 3, 1, 'am strand'),
(32, 5, 2393.11, -1646.04, 13.9051, 12000, 40, 0, 0, 156, 1, 0, 'grove street'),
(33, 24, 1468.42, -906.004, 54.8359, 1400000, 450, 0, 0, 286, 2, 1, 'Vinewood'),
(34, 16, 2306.92, -1679.2, 14.3316, 15500, 150, 995, 0, 110, 1, 0, 'grovestreet'),
(35, 23, 1497.11, -688.86, 95.2309, 3800000, 500, 1, 0, 632, 2, 2, 'vinewood'),
(36, 29, 1535.03, -800.355, 72.8495, 455000, 510, 0, 0, 180, 1, 1, 'vinewood'),
(37, 0, 2334.69, -1234.66, 27.9766, 254000, 350, 150, 0, 262, 2, 0, 'gammelwood'),
(38, 13, 2324.3, -1218.91, 27.9766, 254000, 400, 0, 0, 262, 2, 0, 'gammelwood'),
(39, 10, 559.029, -1076.11, 72.922, 574322, 680, 0, 0, 276, 2, 1, 'vinewood'),
(40, 16, 1106.22, -299.678, 74.5391, 921000, 1200, 9900, 2, 100, 1, 0, 'farm'),
(41, 21, 985.413, 1901.15, 11.4609, 434000, 460, 120, 1, 175, 1, 1, 'lv'),
(42, 25, 1045.15, -642.922, 120.117, 1150000, 0, 0, 0, 175, 2, 2, 'vinewood'),
(43, 27, 1095.25, -647.894, 113.648, 1950000, 550, 14950, 0, 325, 2, 2, 'vinewood'),
(44, 13, 1030.79, 1928.15, 11.4683, 222000, 350, 2546, 1, 231, 1, 0, 'lv'),
(45, 19, 2363.12, 142.085, 28.4416, 250000, 350, 0, 2, 94, 1, 1, 'mafiastadt'),
(46, 0, 2368.44, -1675.15, 14.1682, 25123, 0, 0, 0, 185, 1, 0, 'grovestreet'),
(47, 16, 2017.67, -1703.22, 14.2344, 14000, 300, 32563, 0, 85, 1, 0, 'grovestreet'),
(48, 7, 700.372, -1060.02, 49.4217, 1652300, 350, 0, 0, 472, 2, 2, 'vinewood'),
(49, 16, -910.938, 2685.94, 42.3703, 1500000, 400, 0, 2, 170, 1, 1, 'bootshaus'),
(50, 6, 745.668, -591.004, 18.0129, 500600, 750, 0, 2, 195, 1, 1, 'mafia'),
(51, 26, 2067.05, -1731.71, 14.2066, 23000, 85, 8195, 0, 101, 1, 0, 'grovestreet'),
(52, 28, 2465.37, -2020.77, 14.1242, 15000, 50, 0, 0, 155, 1, 0, 'noch gammeligeres wood'),
(53, 14, 2518.35, 128.983, 27.6756, 200000, 350, 439, 2, 97, 1, 1, 'mafia'),
(54, 19, 2065.12, -1703.55, 14.1484, 35000, 90, 154, 0, 116, 1, 0, 'grovestreet'),
(55, 25, 315.673, -1769.89, 4.63275, 1320000, 500, 64000, 0, 165, 3, 1, 'strand fischer'),
(56, 7, 252.997, -1269.89, 74.3378, 1750000, 500, 600, 0, 510, 2, 2, 'vinewood'),
(57, 25, 835.891, -894.812, 68.7689, 1900000, 650, 3150, 0, 247, 2, 2, 'vinewood'),
(58, 29, 946.239, -710.49, 122.62, 850000, 550, 7199, 0, 167, 1, 1, 'vinewood'),
(59, 24, 1034.82, -812.811, 101.852, 1400000, 600, 1100, 0, 286, 2, 1, 'vinewood'),
(60, 16, 2016.33, -1641.58, 13.7824, 25000, 150, 11610, 0, 102, 1, 0, 'grovestreet'),
(61, 23, 189.659, -1308.33, 70.2497, 3800000, 600, 6900, 0, 656, 2, 2, 'vinewood'),
(62, 0, 1925.53, 663.599, 10.8203, 170000, 0, 0, 1, 170, 1, 1, 'lv'),
(63, 21, 1929.23, 742.657, 10.8203, 170000, 150, 55, 1, 170, 1, 1, 'lv'),
(64, 21, 1956.82, 738.087, 10.8203, 170000, 200, 0, 1, 170, 1, 1, 'lv'),
(65, 5, 1957.01, 691.37, 10.8203, 170000, 175, 0, 1, 170, 1, 1, 'lv'),
(66, 21, 1896.77, 736.583, 14.2763, 170000, 150, 0, 1, 170, 1, 1, 'lv'),
(67, 26, 1896.74, 669.854, 14.2762, 170000, 50, 0, 1, 170, 1, 1, 'lv'),
(68, 19, 2245.57, -122.291, 28.1535, 200000, 350, 1728, 2, 97, 1, 1, 'mafia'),
(69, 16, 2203.13, -89.2988, 28.1535, 200000, 400, 147, 2, 97, 1, 1, 'mafia'),
(70, 11, 724.743, -999.398, 52.7344, 1250000, 500, 200, 0, 225, 2, 1, 'vinewood'),
(71, 22, 251.338, -1220.3, 76.1024, 3100000, 500, 30700, 0, 610, 2, 2, 'vinewood'),
(72, 8, 808.247, -759.268, 76.5314, 850000, 0, 0, 0, 285, 2, 1, 'vinewood'),
(73, 10, 2782.07, -1333.25, 32.3715, 987654, 300, 0, 0, 262, 3, 1, 'strand'),
(74, 0, 1059.04, -1105.42, 28.0451, 463000, 400, 1400, 0, 190, 1, 1, 'tuning'),
(75, 14, 2415.39, -52.2822, 28.1535, 200000, 300, 0, 2, 97, 1, 1, 'mafia'),
(76, 14, 2438.9, -54.9648, 28.1535, 200000, 270, 1008, 2, 97, 1, 1, 'mafia'),
(77, 14, 2392.5, -54.9121, 28.1536, 200000, 300, 612, 2, 97, 1, 1, 'mafia'),
(78, 14, 2367.42, -49.125, 28.1535, 200000, 250, 0, 2, 97, 1, 1, 'mafia'),
(79, 19, 2438.66, -1105.53, 42.7512, 27000, 120, 9763, 0, 101, 1, 0, 'gammelwood'),
(80, 19, 2457.17, -1102.5, 43.8672, 34000, 50, 0, 0, 120, 1, 0, 'gammelwood'),
(81, 29, 910.283, -817.364, 103.126, 450000, 250, 0, 0, 150, 2, 1, 'vinewood'),
(82, 14, 1938.54, -1911.24, 15.2568, 300000, 400, 868, 0, 80, 1, 1, 'bahnhof'),
(83, 8, 852.35, -1422.78, 14.1176, 750000, 350, 198, 0, 335, 2, 1, ''),
(84, 16, 2091.32, -1278.92, 26.1543, 350000, 350, 0, 0, 100, 1, 1, 'glenpark'),
(85, 19, 2257.24, -1643.97, 15.8082, 18500, 100, 1510, 0, 100, 1, 0, 'grove'),
(86, 19, 2282.22, -1641.49, 15.8898, 18500, 100, 847, 0, 101, 1, 0, 'grove'),
(87, 19, 2249.91, -1238.92, 25.8984, 14000, 2000, 232, 0, 72, 1, 0, 'grove'),
(88, 22, 219.319, -1249.74, 78.336, 2820000, 500, 22650, 0, 510, 2, 2, 'vinewood'),
(89, 6, 652.363, -1694.17, 14.5603, 250000, 400, 7700, 0, 140, 2, 1, 'kp'),
(90, 23, 1928.95, 2774.5, 10.8203, 650000, 350, 0, 1, 513, 2, 1, 'lv'),
(91, 8, 2000.19, -1114.77, 27.125, 500000, 199, 0, 0, 273, 2, 1, 'glenpark'),
(92, 0, 1905.8, -1112.95, 26.6641, 160000, 0, 0, 0, 140, 1, 1, 'glenpark'),
(93, 16, 2272.28, -118.276, 28.1535, 200000, 300, 94, 0, 97, 1, 1, 'mafia'),
(94, 5, 2407.78, -1106.97, 40.2957, 75000, 400, 248, 0, 143, 1, 0, 'gammelwood'),
(95, 21, 228.096, -1405.52, 51.6094, 450000, 500, 100, 0, 163, 1, 1, 'vinewood'),
(96, 19, 2326.63, -1717.16, 13.9074, 18500, 50, 0, 0, 110, 1, 0, 'grove'),
(97, 19, 2244.33, -1637.75, 15.9074, 18500, 0, 0, 0, 110, 1, 0, 'grove'),
(98, 16, 2013.58, -1656.12, 14.1363, 29000, 100, 3607, 0, 102, 1, 0, 'asd'),
(99, 14, 1287.24, -867.874, 46.8361, 250000, 350, 7689, 0, 119, 1, 1, 'bsn'),
(100, 19, 1280.83, -874.654, 46.8438, 250000, 200, 100, 0, 119, 1, 1, 'bsn'),
(101, 14, 1291.02, -896.865, 46.6251, 250000, 0, 0, 0, 119, 1, 1, 'bsn'),
(102, 19, 1242.1, -878.105, 46.6406, 250000, 100, 0, 0, 119, 1, 1, 'bsn'),
(103, 14, 2551.07, 57.2842, 27.6756, 211000, 350, 5344, 2, 97, 1, 1, 'mafia'),
(104, 23, -2706.51, 864.772, 70.7031, 550000, 400, 0, 2, 300, 2, 1, 'sf'),
(105, 10, 1142.01, -1068.71, 31.7656, 705000, 300, 200, 0, 227, 3, 1, 'bank'),
(106, 8, 822.421, -1505.17, 14.3936, 950000, 550, 405, 0, 500, 2, 1, 'beach'),
(107, 16, 1939.14, -1114.48, 27.4523, 170000, 201, 50, 0, 120, 1, 1, 'glen'),
(108, 5, 2327.27, -1681.8, 14.9297, 19612, 0, 0, 0, 145, 1, 0, 'grove'),
(109, 16, 2507.65, -2020.74, 14.2101, 20000, 500, 0, 0, 155, 1, 0, 'gammel'),
(110, 12, -2437.48, 2354.68, 5.44307, 321125, 100, 0, 2, 240, 1, 0, 'bay'),
(111, 8, 1967.34, 2766.39, 10.8265, 650000, 300, 900, 1, 296, 2, 1, 'lv'),
(112, 10, 1112.59, -741.969, 100.133, 785000, 999, 0, 0, 253, 2, 1, 'vinewood'),
(113, 23, -2662.13, 877.042, 79.7738, 1010101, 350, 200, 2, 375, 2, 1, 'sf'),
(114, 1, 848.258, -745.317, 94.9693, 450000, 0, 0, 0, 201, 2, 0, 'vinewood'),
(115, 5, 785.885, -828.583, 70.2896, 650000, 0, 0, 0, 201, 2, 0, 'vinewood'),
(116, 5, 2696.31, -1990.36, 14.2229, 150000, 200, 200, 0, 180, 1, 0, 'ls'),
(117, 23, 1378.56, -1753.06, 14.1406, 1512313, 600, 97700, 0, 373, 2, 1, 'stadthalle'),
(118, 29, -2710.93, 967.471, 54.4609, 900000, 350, 0, 2, 209, 1, 2, 'sf'),
(119, 0, 2842.15, -1334.79, 14.7421, 375000, 200, 0, 2, 192, 1, 1, 'beach'),
(120, 25, 1980.38, -1719.02, 17.0304, 350000, 350, 3425, 0, 165, 2, 1, 'asd'),
(121, 8, 841.422, -1471.37, 14.3116, 950000, 535, 1240, 0, 500, 2, 1, 'asd'),
(122, 14, 1928.7, -1916.14, 15.2568, 311000, 300, 228, 0, 80, 1, 1, 'asd'),
(123, 18, 937.849, -848.31, 93.6309, 850000, 500, 0, 0, 180, 2, 1, 'vinewood'),
(124, 25, 1540.24, -851.521, 64.3361, 785000, 450, 350, 0, 253, 2, 1, 'asd'),
(125, 5, 768.08, -1655.89, 5.60938, 350000, 100, 0, 0, 152, 1, 1, 'am kanal'),
(126, 23, 1443.25, -628.837, 95.7186, 2300000, 380, 10980, 0, 560, 2, 2, 'vinew'),
(127, 29, 891.31, -783.106, 101.314, 1500000, 600, 4300, 0, 260, 1, 2, 'vine'),
(128, 8, 1274.36, 2522.55, 10.8203, 650000, 1000, 0, 1, 296, 2, 1, 'asd'),
(129, 29, 766.924, -1605.83, 13.8039, 350000, 250, 0, 0, 152, 1, 1, 'asd'),
(130, 25, -2348.3, 2423.55, 7.32946, 1500000, 350, 16650, 2, 182, 2, 2, 'bayside'),
(131, 7, 497.229, -1095.03, 82.3592, 2350000, 200, 0, 0, 560, 2, 2, 'vinewood'),
(132, 29, 1527.23, -773.154, 80.5781, 495000, 500, 500, 0, 180, 1, 1, 'vinewood');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `haussys_irdb`
--

CREATE TABLE IF NOT EXISTS `haussys_irdb` (
`ID` int(11) NOT NULL,
  `CoordX` float NOT NULL DEFAULT '0',
  `CoordY` float NOT NULL DEFAULT '0',
  `CoordZ` float NOT NULL DEFAULT '0',
  `Interior` int(11) NOT NULL DEFAULT '0',
  `Preis` int(11) NOT NULL DEFAULT '0',
  `QM` int(11) NOT NULL DEFAULT '0' COMMENT 'Quadratmeter (geschätzte Zahl für Mögliche Innenraum-Größe)',
  `Stockwerke` int(11) NOT NULL DEFAULT '0',
  `Wert` int(11) NOT NULL DEFAULT '0' COMMENT '0=> Arm; 1=> Mittel; 2=> Luxus',
  `Beschreibung` text COMMENT 'Beschreibender Text für DB'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=30 ;

--
-- Daten für Tabelle `haussys_irdb`
--

INSERT INTO `haussys_irdb` (`ID`, `CoordX`, `CoordY`, `CoordZ`, `Interior`, `Preis`, `QM`, `Stockwerke`, `Wert`, `Beschreibung`) VALUES
(0, 0, 0, 0, 0, 0, 0, 0, 0, 'Dummyeintrag für keinen Innenraum'),
(1, 2807.63, -1174.09, 1025.57, 8, 10000, 170, 2, 0, 'Innenraum mit der Kanone'),
(2, 344.153, 304.833, 999.148, 6, 3000, 56, 1, 0, 'Sadomaso'),
(3, 1261.13, -785.543, 1091.91, 5, 1250000, 1000, 2, 2, 'Madogs oben'),
(4, 1298.7, -796.326, 1084.01, 5, 1250000, 1000, 2, 2, 'Madogsunten'),
(5, 222.941, 1287.44, 1082.14, 1, 5000, 116, 1, 0, 'Armer Innenraum'),
(6, 260.949, 1284.75, 1080.26, 4, 39000, 135, 1, 1, ''),
(7, 140.18, 1366.58, 1083.86, 5, 450000, 450, 2, 2, 'Luxus mit der großen Treppe vorm Eingang'),
(8, 82.9492, 1322.44, 1083.87, 9, 65000, 270, 2, 1, ''),
(9, -283.749, 1471.18, 1084.38, 15, 35000, 147, 2, 1, ''),
(10, -260.6, 1456.62, 1084.37, 4, 55000, 212, 2, 1, ''),
(11, -42.4658, 1405.76, 1084.43, 8, 30000, 200, 1, 1, ''),
(12, -68.8877, 1351.44, 1080.21, 6, 4500, 180, 1, 0, ''),
(13, 2332.97, -1077.15, 1049.02, 6, 7000, 204, 1, 0, ''),
(14, 2233.87, -1115.04, 1050.88, 5, 11000, 67, 1, 1, ''),
(15, 2365.25, -1135.43, 1050.88, 8, 220000, 268, 1, 2, ''),
(16, 2282.98, -1140.28, 1050.9, 11, 3000, 48, 1, 0, ''),
(17, 2196.57, -1204.59, 1049.02, 6, 250000, 370, 1, 2, ''),
(18, 2270.23, -1210.58, 1047.56, 10, 28000, 176, 1, 1, ''),
(19, 2308.87, -1212.71, 1049.02, 6, 4000, 69, 1, 0, ''),
(20, 2218.22, -1076.28, 1050.48, 1, 60000, 103, 1, 2, ''),
(21, 2237.67, -1081.54, 1049.02, 2, 25000, 155, 1, 1, ''),
(22, 2317.89, -1026.57, 1050.22, 9, 380000, 332, 2, 2, ''),
(23, 225.593, 1021.89, 1084.02, 7, 50000, 300, 2, 1, ''),
(24, 235.266, 1186.97, 1080.26, 3, 45000, 280, 2, 1, ''),
(25, 23.9795, 1340.31, 1084.38, 10, 25000, 120, 2, 1, ''),
(26, 266.698, 304.927, 999.148, 2, 2000, 26, 1, 0, ''),
(27, 2324.64, -1149.34, 1050.71, 12, 275000, 270, 2, 2, ''),
(28, 422.557, 2536.52, 10, 10, 2500, 62, 1, 0, ''),
(29, 443.377, 509.298, 1001.42, 12, 40000, 131, 1, 1, '');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `haussys_wunsch`
--

CREATE TABLE IF NOT EXISTS `haussys_wunsch` (
`ID` int(11) NOT NULL,
  `Nickname` varchar(250) NOT NULL,
  `x` float NOT NULL,
  `y` float NOT NULL,
  `z` float NOT NULL,
  `datum` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `unixtimestamp` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=536 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `inventar`
--

CREATE TABLE IF NOT EXISTS `inventar` (
`ID` int(11) NOT NULL,
  `Nickname` varchar(255) NOT NULL,
  `Benzinkanister` int(11) NOT NULL DEFAULT '0',
  `Lotto` varchar(255) NOT NULL DEFAULT '0|0|0',
  `Lottoschein` int(11) NOT NULL DEFAULT '0',
  `Rubbellos` int(11) NOT NULL DEFAULT '0',
  `Drogen` int(11) NOT NULL DEFAULT '0',
  `Materials` int(11) NOT NULL DEFAULT '0',
  `Snack` int(11) NOT NULL DEFAULT '0',
  `Hamburger` int(11) NOT NULL DEFAULT '0',
  `Fertigessen` int(11) NOT NULL DEFAULT '0',
  `Schnellhilfe` int(11) NOT NULL DEFAULT '0',
  `CarFinder` int(11) NOT NULL DEFAULT '0',
  `UseCarFinder` int(11) NOT NULL DEFAULT '0',
  `Offline_HP` float NOT NULL DEFAULT '0',
  `Offline_Armor` float NOT NULL DEFAULT '0',
  `Offline_Weapons` varchar(255) NOT NULL DEFAULT '0',
  `Offline_Ammo` varchar(255) NOT NULL DEFAULT '0',
  `Hufeisenhelfer` int(11) NOT NULL DEFAULT '0',
  `geschenk` int(11) NOT NULL DEFAULT '0',
  `terralapptapp` int(11) NOT NULL DEFAULT '0',
  `tachodig_addon` int(11) NOT NULL DEFAULT '0',
  `adgutscheine` int(11) NOT NULL DEFAULT '0',
  `adaktiv` int(11) NOT NULL DEFAULT '0',
  `dice` int(11) NOT NULL DEFAULT '0',
  `Kondome` int(11) NOT NULL DEFAULT '0',
  `blutmesser` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=56632 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `jobskills`
--

CREATE TABLE IF NOT EXISTS `jobskills` (
`ID` int(11) NOT NULL,
  `Nickname` varchar(255) NOT NULL,
  `fischSkill` int(11) NOT NULL DEFAULT '0',
  `fischSkillPoints` int(11) NOT NULL DEFAULT '0',
  `busSkill` int(11) NOT NULL DEFAULT '0',
  `busSkillPoints` int(11) NOT NULL DEFAULT '0',
  `muellSkill` int(11) NOT NULL DEFAULT '0',
  `muellSkillPoints` int(11) NOT NULL DEFAULT '0',
  `pizzaSkill` int(11) NOT NULL DEFAULT '0',
  `pizzaSkillPoints` int(11) NOT NULL DEFAULT '0',
  `flyersSkillPoints` int(11) NOT NULL DEFAULT '0',
  `flyersSkill` int(11) NOT NULL DEFAULT '0',
  `truckSkill` int(11) NOT NULL DEFAULT '0',
  `truckSkillPoints` int(11) NOT NULL DEFAULT '0',
  `sweeperSkill` int(11) NOT NULL DEFAULT '0',
  `sweeperSkillPoints` int(11) NOT NULL DEFAULT '0',
  `farmerSkill` int(11) NOT NULL DEFAULT '0',
  `farmerSkillPoints` int(11) NOT NULL DEFAULT '0',
  `bergWerkSkillPoints` int(11) NOT NULL DEFAULT '0',
  `bergWerksSkill` int(11) NOT NULL DEFAULT '0',
  `meeresSkill` int(11) NOT NULL DEFAULT '0',
  `meeresSkillPoints` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=65369 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `lizensen`
--

CREATE TABLE IF NOT EXISTS `lizensen` (
`ID` int(11) NOT NULL,
  `Nickname` varchar(255) NOT NULL,
  `lastautoLic` int(11) NOT NULL DEFAULT '0',
  `lasttruckLic` int(11) NOT NULL DEFAULT '0',
  `lastplaneLic` int(11) NOT NULL DEFAULT '0',
  `lastbikeLic` int(11) NOT NULL DEFAULT '0',
  `lastheliLic` int(11) NOT NULL DEFAULT '0',
  `autoLic` int(11) NOT NULL DEFAULT '0',
  `truckLic` int(11) NOT NULL DEFAULT '0',
  `planeLic` int(11) NOT NULL DEFAULT '0',
  `bikeLic` int(11) NOT NULL DEFAULT '0',
  `heliLic` int(11) NOT NULL DEFAULT '0',
  `boatLic` int(11) NOT NULL DEFAULT '0',
  `quadLic` int(11) NOT NULL DEFAULT '0',
  `sonstigeLic` int(11) NOT NULL DEFAULT '0',
  `waffenLic` int(11) NOT NULL DEFAULT '0',
  `angelLic` int(11) NOT NULL DEFAULT '0',
  `reiseLic` int(11) NOT NULL DEFAULT '0',
  `persoLic` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=65369 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `multiaccount_serial`
--

CREATE TABLE IF NOT EXISTS `multiaccount_serial` (
`ID` int(11) NOT NULL,
  `Serial` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=37 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `newtables`
--

CREATE TABLE IF NOT EXISTS `newtables` (
`ID` int(11) NOT NULL,
  `tablename` varchar(255) NOT NULL,
  `newNameSpalte` varchar(255) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ostereier`
--

CREATE TABLE IF NOT EXISTS `ostereier` (
`ID` int(11) NOT NULL,
  `X` float NOT NULL DEFAULT '0',
  `Y` float DEFAULT '0',
  `Z` float NOT NULL DEFAULT '0',
  `Inte` int(11) NOT NULL DEFAULT '0',
  `Dim` int(11) NOT NULL DEFAULT '0',
  `State` int(11) NOT NULL DEFAULT '0',
  `gefundenVon` varchar(250) DEFAULT NULL,
  `comment` text,
  `event` varchar(100) NOT NULL DEFAULT 'ostern'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4543 ;

--
-- Daten für Tabelle `ostereier`
--

INSERT INTO `ostereier` (`ID`, `X`, `Y`, `Z`, `Inte`, `Dim`, `State`, `gefundenVon`, `comment`, `event`) VALUES
(7, 347.338, 163.359, 1014.19, 3, 0, 0, NULL, 'Stadthalle - 1 Stock - Büro', 'ostern'),
(8, 327.949, 153.13, 1014.19, 3, 0, 0, NULL, 'Stadthalle - 1. Stock - Büro', 'ostern'),
(9, 331.055, 161.899, 1014.19, 3, 0, 0, NULL, 'Stadthalle - 1. Stock - Büro', 'ostern'),
(10, 321.501, 159.782, 1014.18, 3, 0, 0, NULL, 'Stadthalle - 1. Stock - Büro', 'ostern'),
(11, 330.948, 181.97, 1014.19, 3, 0, 0, NULL, 'Stadthalle - 1. Stock - Büro', 'ostern'),
(12, 320.108, 181.375, 1014.19, 3, 0, 0, NULL, 'Stadthalle - 1. Stock - Büro', 'ostern'),
(13, 331.59, 193.19, 1014.19, 3, 0, 0, NULL, 'Stadthalle - 1. Stock - Büro', 'ostern'),
(14, 334.844, 188.135, 1014.18, 3, 0, 0, NULL, 'Stadthalle - 1. Stock - Büro', 'ostern'),
(15, 333.985, 197.754, 1014.19, 3, 0, 0, NULL, 'Stadthalle - 1. Stock - Büro', 'ostern'),
(16, 363.3, 197.583, 1014.19, 3, 0, 0, NULL, 'Stadthalle - 1. Stock - Büro', 'ostern'),
(17, 369.345, 180.776, 1014.19, 3, 0, 0, NULL, 'Stadthalle - 1. Stock - Büro', 'ostern'),
(18, 366.876, 196.627, 1014.18, 3, 0, 0, NULL, 'Stadthalle - 1. Stock - Büro', 'ostern'),
(19, 380.41, 180.264, 1014.19, 3, 0, 0, NULL, 'Stadthalle - 1. Stock - Büro', 'ostern'),
(20, 355.559, 167.584, 1019.99, 3, 0, 0, NULL, 'Stadthalle - 2. Stock - Büro', 'ostern'),
(21, 355.05, 162.2, 1019.98, 3, 0, 0, NULL, 'Stadthalle - 2. Stock - Büro', 'ostern'),
(22, 329.081, 178.507, 1019.98, 3, 0, 0, NULL, 'Stadthalle - 2. Stock - Gang', 'ostern'),
(23, 366.607, 192.735, 1019.98, 3, 0, 0, NULL, 'Stadthalle - 2. Stock - Büro', 'ostern'),
(24, 358.875, 196.021, 1019.98, 3, 0, 0, NULL, 'Stadthalle - 2. Stock - Büro', 'ostern'),
(25, 354.931, 194.827, 1019.98, 3, 0, 0, NULL, 'Stadthalle - 2. Stock - Büro', 'ostern'),
(26, 350.945, 194.543, 1019.98, 3, 0, 0, NULL, 'Stadthalle - 2. Stock - Büro', 'ostern'),
(27, 373.008, 178.409, 1019.98, 3, 0, 0, NULL, 'Stadthalle - 2. Stock - Büro', 'ostern'),
(28, 372.696, 171.093, 1019.98, 3, 0, 0, NULL, 'Stadthalle - 2. Stock - Büro', 'ostern'),
(29, 328.005, 173.887, 1019.99, 3, 0, 0, NULL, 'Stadthalle - 2. Stock - Gang', 'ostern'),
(30, 371.678, 160.689, 1025.79, 3, 0, 0, NULL, 'Stadthalle - 3. Stock - Stiegenaufgang', 'ostern'),
(31, 366.134, 148.9, 1025.79, 3, 0, 0, NULL, 'Stadthalle - 3. Stock - Büro', 'ostern'),
(32, 366.134, 156.635, 1025.79, 3, 0, 0, NULL, 'Stadthalle - 3. Stock - Büro', 'ostern'),
(33, 358.36, 148.843, 1025.79, 3, 0, 0, NULL, 'Stadthalle - 3. Stock - Büro', 'ostern'),
(34, 351.773, 158.275, 1025.79, 3, 0, 0, NULL, 'Stadthalle - 3. Stock - Büro', 'ostern'),
(35, 342.712, 162.2, 1027.56, 3, 0, 0, NULL, 'Stadthalle - 3. Stock - Büro', 'ostern'),
(36, 351.688, 175.208, 1025.79, 3, 0, 0, NULL, 'Stadthalle - 3. Stock - Büro', 'ostern'),
(37, 358.11, 166.014, 1025.79, 3, 0, 0, NULL, 'Stadthalle - 3. Stock - Büro', 'ostern'),
(38, 366.134, 165.911, 1025.79, 3, 0, 0, NULL, 'Stadthalle - 3. Stock - Büro', 'ostern'),
(39, 359.714, 175.141, 1025.79, 3, 0, 0, NULL, 'Stadthalle - 3. Stock - Büro', 'ostern'),
(40, 376.449, 188.776, 1008.39, 3, 0, 0, NULL, 'Stadthalle - EG - Büro', 'ostern'),
(41, 362.1, 201.441, 1008.38, 3, 0, 0, NULL, 'Stadthalle - EG - Büro', 'ostern'),
(42, 356.256, 212.218, 1008.38, 3, 0, 0, NULL, 'Stadthalle - EG - Büro', 'ostern'),
(43, 357.547, 217.236, 1008.38, 3, 0, 0, NULL, 'Stadthalle - EG - Büro', 'ostern'),
(44, 356.401, 201.47, 1008.38, 3, 0, 0, NULL, 'Stadthalle - EG - Büro', 'ostern'),
(45, 364.549, 190.295, 1008.38, 3, 0, 0, NULL, 'Stadthalle - EG - Büro', 'ostern'),
(46, 368.265, 190.365, 1008.38, 3, 0, 0, NULL, 'Stadthalle - EG - Büro', 'ostern'),
(47, 354.378, 159.594, 1008.38, 3, 0, 0, NULL, 'Stadthalle - EG - Büro', 'ostern'),
(48, 368.31, 158.71, 1008.38, 3, 0, 0, NULL, 'Stadthalle - EG - Büro', 'ostern'),
(49, 390.073, 177.562, 1008.38, 3, 0, 0, NULL, 'Stadthalle - EG - Büro', 'ostern'),
(50, 1457.49, -1755.01, 13.5469, 0, 0, 0, NULL, 'LS - Stadthalle', 'ostern'),
(51, 1504.58, -1754.98, 13.5469, 0, 0, 0, NULL, 'LS - Stadthalle', 'ostern'),
(52, 1541.08, -1702.39, 13.9816, 0, 0, 0, NULL, 'LS - PD', 'ostern'),
(53, 1546.83, -1693.3, 13.9214, 0, 0, 0, NULL, 'LS - PD', 'ostern'),
(54, 1546.5, -1687.92, 13.9214, 0, 0, 0, NULL, 'LS - PD', 'ostern'),
(55, 1546.67, -1664.5, 13.9215, 0, 0, 0, NULL, 'LS - PD', 'ostern'),
(56, 1546.78, -1658.12, 13.9215, 0, 0, 0, NULL, 'LS - PD', 'ostern'),
(57, 1541.55, -1647.77, 13.9816, 0, 0, 0, NULL, 'LS - PD', 'ostern'),
(58, 1578.18, -1634.59, 13.5624, 0, 0, 0, NULL, 'LS - PD', 'ostern'),
(59, 1545.82, -1617.19, 13.3828, 0, 0, 0, NULL, 'LS - PD', 'ostern'),
(60, 1604.81, -1638.54, 13.7188, 0, 0, 0, NULL, 'LS - PD', 'ostern'),
(61, 1596.07, -1714.57, 13.5546, 0, 0, 0, NULL, 'LS - PD', 'ostern'),
(62, 1545.49, -1772.56, 13.5469, 0, 0, 0, NULL, 'LS - PD', 'ostern'),
(63, 1545.83, -1807.78, 13.5469, 0, 0, 0, NULL, 'LS - Stadthalle', 'ostern'),
(64, 1417.11, -1807.52, 13.5469, 0, 0, 0, NULL, 'LS - Stadthalle', 'ostern'),
(65, 1413.02, -1797.43, 15.4356, 0, 0, 0, NULL, 'LS - Stadthalle', 'ostern'),
(66, 1412.76, -1777.5, 15.4356, 0, 0, 0, NULL, 'LS - Stadthalle', 'ostern'),
(67, 1416.65, -1772.64, 13.5469, 0, 0, 0, NULL, 'LS - Stadthalle', 'ostern'),
(68, 1505.06, -1626.3, 14.7891, 0, 0, 0, NULL, 'LS - Stadtpark', 'ostern'),
(69, 1500.65, -1664.46, 14.0469, 0, 0, 0, NULL, 'LS - Stadtpark', 'ostern'),
(70, 1454.54, -1626.41, 14.7891, 0, 0, 0, NULL, 'LS - Stadtpark', 'ostern'),
(71, 1447.43, -1650.25, 14.0469, 0, 0, 0, NULL, 'LS - Stadtpark', 'ostern'),
(72, 1451.81, -1655.94, 14.0469, 0, 0, 0, NULL, 'LS - Stadtpark', 'ostern'),
(75, 1565.84, -1564.39, 13.5469, 0, 0, 0, NULL, 'LS - Abstellplatz', 'ostern'),
(76, 1592.98, -1556.4, 13.5847, 0, 0, 0, NULL, 'LS - Abstellplatz', 'ostern'),
(77, 1593.64, -1560.29, 14.1552, 0, 0, 0, NULL, 'LS - Abstellplatz', 'ostern'),
(78, 1622.35, -1560.28, 14.1846, 0, 0, 0, NULL, 'LS - Abstellplatz', 'ostern'),
(79, 1615.54, -1484.69, 13.5679, 0, 0, 0, NULL, 'LS - Abstellplatz', 'ostern'),
(80, 1587.56, -1500.34, 13.5708, 0, 0, 0, NULL, 'LS - Abstellplatz', 'ostern'),
(81, 1577.18, -1470.41, 14.238, 0, 0, 0, NULL, 'LS - Abstellplatz', 'ostern'),
(82, 1547.32, -1470.61, 13.5492, 0, 0, 0, NULL, 'LS - Abstellplatz', 'ostern'),
(83, 1517.53, -1506.12, 13.5547, 0, 0, 0, NULL, 'LS - Abstellplatz', 'ostern'),
(84, 1496.75, -1484.29, 13.5493, 0, 0, 0, NULL, 'LS - Abstellplatz', 'ostern'),
(85, 1462.33, -1488.53, 13.5469, 0, 0, 0, NULL, 'LS - Abstellplatz', 'ostern'),
(86, 1572.44, -1583.54, 13.5469, 0, 0, 0, NULL, 'LS - Abstellplatz', 'ostern'),
(87, 1583.3, -1583.78, 13.5469, 0, 0, 0, NULL, 'LS - Abstellplatz', 'ostern'),
(88, 1595.41, -1584.05, 13.5687, 0, 0, 0, NULL, 'LS - Abstellplatz', 'ostern'),
(89, 1605.95, -1583.63, 13.687, 0, 0, 0, NULL, 'LS - Abstellplatz', 'ostern'),
(90, 1615.91, -1583.97, 13.7188, 0, 0, 0, NULL, 'LS - Abstellplatz', 'ostern'),
(91, 1631.44, -1583.95, 13.6843, 0, 0, 0, NULL, 'LS - Abstellplatz', 'ostern'),
(92, 1641.53, -1583.8, 13.5858, 0, 0, 0, NULL, 'LS - Abstellplatz', 'ostern'),
(93, 1649.59, -1573.02, 13.5364, 0, 0, 0, NULL, 'LS - Abstellplatz', 'ostern'),
(94, 1649.71, -1560.26, 13.5469, 0, 0, 0, NULL, 'LS - Abstellplatz', 'ostern'),
(95, 1610.09, -1531.65, 13.6232, 0, 0, 0, NULL, 'LS - Abstellplatz', 'ostern'),
(96, 1638.55, -1660.06, 13.5711, 0, 0, 0, NULL, 'LS - Geramys Haus', 'ostern'),
(97, 1638.87, -1668.06, 13.5698, 0, 0, 0, NULL, 'LS - Geramys Haus', 'ostern'),
(98, 1641.55, -1678.13, 13.5406, 0, 0, 0, NULL, 'LS - Geramys Haus', 'ostern'),
(99, 1664.74, -1664.65, 23.5156, 0, 0, 0, NULL, 'LS - Geramys Haus', 'ostern'),
(100, 1669.36, -1640.76, 22.5247, 0, 0, 0, NULL, 'LS - Geramys Haus', 'ostern'),
(101, 1668.64, -1632.72, 22.5217, 0, 0, 0, NULL, 'LS - Geramys Haus', 'ostern'),
(102, 1658.41, -1621.91, 22.5156, 0, 0, 0, NULL, 'LS - Geramys Haus', 'ostern'),
(103, 1650.46, -1622.36, 22.5156, 0, 0, 0, NULL, 'LS - Geramys Haus', 'ostern'),
(104, 1639.21, -1632.76, 22.5156, 0, 0, 0, NULL, 'LS - Geramys Haus', 'ostern'),
(105, 1639.69, -1640.64, 22.5217, 0, 0, 0, NULL, 'LS - Geramys Haus', 'ostern'),
(106, 1644.27, -1692.04, 15.6094, 0, 0, 0, NULL, 'LS - Geramys Haus', 'ostern'),
(107, 1644.61, -1629.82, 28.1641, 0, 0, 0, NULL, 'LS - Geramys Haus', 'ostern'),
(108, 1646.79, -1641.43, 28.1641, 0, 0, 0, NULL, 'LS - Geramys Haus', 'ostern'),
(109, 1644.3, -1644.05, 28.1641, 0, 0, 0, NULL, 'LS - Geramys Haus', 'ostern'),
(110, 1645.49, -1626.37, 80.6144, 0, 0, 0, NULL, 'LS - Geramys Haus', 'ostern'),
(111, 1648.81, -1632.02, 83.7812, 0, 0, 0, NULL, 'LS - Geramys Haus', 'ostern'),
(112, 1649.62, -1641.26, 83.7812, 0, 0, 0, NULL, 'LS - Geramys Haus', 'ostern'),
(113, 1659.25, -1642.11, 83.7812, 0, 0, 0, NULL, 'LS - Geramys Haus', 'ostern'),
(114, 1665.12, -1646.16, 80.3547, 0, 0, 0, NULL, 'LS - Geramys Haus', 'ostern'),
(115, 1664.04, -1625.47, 80.3547, 0, 0, 0, NULL, 'LS - Geramys Haus', 'ostern'),
(116, 1640.97, -1626.88, 76.2188, 0, 0, 0, NULL, 'LS - Geramys Haus', 'ostern'),
(117, 1644.19, -1622.64, 76.2145, 0, 0, 0, NULL, 'LS - Geramys Haus', 'ostern'),
(118, 1678.09, -1639.49, 14.229, 0, 0, 0, NULL, 'LS - Geramys Haus', 'ostern'),
(119, 1678.09, -1630.59, 14.2266, 0, 0, 0, NULL, 'LS - Geramys Haus', 'ostern'),
(120, 1698.83, -1665.31, 20.1943, 0, 0, 0, NULL, 'LS - Geramys Haus', 'ostern'),
(121, 1717.07, -1680.29, 20.1953, 0, 0, 0, NULL, 'LS - Geramys Haus', 'ostern'),
(122, 1717.05, -1684.83, 13.544, 0, 0, 0, NULL, 'LS - Geramys Haus', 'ostern'),
(123, 1674.35, -1691.53, 13.5469, 0, 0, 0, NULL, 'LS - Geramys Haus', 'ostern'),
(124, 1641.75, -1718.97, 13.4978, 0, 0, 0, NULL, 'LS - Geramys Haus', 'ostern'),
(125, 1575.16, -1897.72, 13.5608, 0, 0, 0, NULL, 'LS - Cafe', 'ostern'),
(126, 1561.04, -1897.62, 13.5608, 0, 0, 0, NULL, 'LS - Cafe', 'ostern'),
(127, 1396.8, -1893.2, 13.4848, 0, 0, 0, NULL, 'LS - Hinter Shop', 'ostern'),
(128, 1397.32, -1901.79, 13.5167, 0, 0, 0, NULL, 'LS - Hinter Shop', 'ostern'),
(129, 1377.38, -1860.33, 13.9493, 0, 0, 0, NULL, 'LS - In freier Wildbahn', 'ostern'),
(130, 1371.5, -1860.08, 13.9509, 0, 0, 0, NULL, 'LS - In freier Wildbahn', 'ostern'),
(131, 1340.62, -1832.87, 13.5702, 0, 0, 0, NULL, 'LS - In freier Hinterhof', 'ostern'),
(132, 1337.54, -1816.53, 13.5468, 0, 0, 0, NULL, 'LS - In freier Hinterhof', 'ostern'),
(133, 1338.86, -1797.59, 13.5547, 0, 0, 0, NULL, 'LS - In freier Hinterhof', 'ostern'),
(134, 1336.99, -1774.76, 14.7022, 0, 0, 0, NULL, 'LS - In freier Hinterhof', 'ostern'),
(135, 1377.91, -1817.18, 13.5469, 0, 0, 0, NULL, 'LS - In freier Hinterhof', 'ostern'),
(136, 1419.83, -1848.11, 13.5469, 0, 0, 0, NULL, 'LS - In freier Hinterhof', 'ostern'),
(137, 1422.02, -1849.13, 13.9688, 0, 0, 0, NULL, 'LS - In freier Hinterhof', 'ostern'),
(138, 1466.03, -1848.38, 13.5469, 0, 0, 0, NULL, 'LS - In freier Hinterhof', 'ostern'),
(139, 1492.29, -1848.43, 13.5469, 0, 0, 0, NULL, 'LS - In freier Hinterhof', 'ostern'),
(140, 1538.19, -1849.55, 13.5469, 0, 0, 0, NULL, 'LS - In freier Hinterhof', 'ostern'),
(141, 1384.85, -1685.71, 13.533, 0, 0, 0, NULL, 'LS - In freier Hinterhof', 'ostern'),
(142, 1701.37, -1800.62, 13.6142, 0, 0, 0, NULL, 'LS - Rookiespawn', 'ostern'),
(143, 1729.38, -1754.51, 13.0608, 0, 0, 0, NULL, 'LS - Rookiespawn', 'ostern'),
(144, 1737.49, -1844.35, 13.5763, 0, 0, 0, NULL, 'LS - Rookiespawn', 'ostern'),
(145, 1729.08, -1873.92, 13.5631, 0, 0, 0, NULL, 'LS - Rookiespawn', 'ostern'),
(146, 1734.32, -1888.49, 13.5618, 0, 0, 0, NULL, 'LS - Rookiespawn', 'ostern'),
(147, 1717.99, -1908.07, 13.5658, 0, 0, 0, NULL, 'LS - Rookiespawn', 'ostern'),
(148, 1712.27, -1908.06, 13.5672, 0, 0, 0, NULL, 'LS - Rookiespawn', 'ostern'),
(149, 1712.16, -1916.05, 13.5673, 0, 0, 0, NULL, 'LS - Rookiespawn', 'ostern'),
(150, 1717.87, -1916.05, 13.5659, 0, 0, 0, NULL, 'LS - Rookiespawn', 'ostern'),
(151, 1727.43, -1903.09, 13.5635, 0, 0, 0, NULL, 'LS - Rookiespawn', 'ostern'),
(152, 1726.94, -1895.79, 13.5636, 0, 0, 0, NULL, 'LS - Rookiespawn', 'ostern'),
(153, 1719.11, -1895.76, 13.5656, 0, 0, 0, NULL, 'LS - Rookiespawn', 'ostern'),
(154, 1701.46, -1874.1, 13.5699, 0, 0, 0, NULL, 'LS - Rookiespawn', 'ostern'),
(155, 1693.89, -1966.42, 8.05693, 0, 0, 0, NULL, 'LS - Rookiespawn', 'ostern'),
(156, 1688.33, -1974.63, 8.40823, 0, 0, 0, NULL, 'LS - Rookiespawn', 'ostern'),
(157, 1684.48, -2006.68, 13.6911, 0, 0, 0, NULL, 'LS - Rookiespawn', 'ostern'),
(158, 1783.25, -2018.05, 13.6866, 0, 0, 0, NULL, 'LS - Rookiespawn', 'ostern'),
(159, 1767.3, -1908.64, 13.1526, 0, 0, 0, NULL, 'LS - Rookiespawn', 'ostern'),
(160, 1767.39, -1933.49, 13.1266, 0, 0, 0, NULL, 'LS - Rookiespawn', 'ostern'),
(161, 1759.17, -1927.82, 13.1391, 0, 0, 0, NULL, 'LS - Rookiespawn', 'ostern'),
(162, 1758.59, -1921.02, 13.1481, 0, 0, 0, NULL, 'LS - Rookiespawn', 'ostern'),
(163, 1751.54, -1933.06, 19.8875, 0, 0, 0, NULL, 'LS - Rookiespawn', 'ostern'),
(164, 1734.47, -1933.29, 19.9223, 0, 0, 0, NULL, 'LS - Rookiespawn', 'ostern'),
(165, 1727.34, -1933.32, 19.926, 0, 0, 0, NULL, 'LS - Rookiespawn', 'ostern'),
(166, 1743.58, -1936.04, 20.3338, 0, 0, 0, NULL, 'LS - Rookiespawn', 'ostern'),
(167, 1805.1, -1871.42, 13.5796, 0, 0, 0, NULL, 'LS - Rookiespawn', 'ostern'),
(168, 1789.96, -1871.19, 13.5656, 0, 0, 0, NULL, 'LS - Rookiespawn', 'ostern'),
(169, 1767.19, -1867.97, 16.2048, 0, 0, 0, NULL, 'LS - Rookiespawn', 'ostern'),
(170, 1772.72, -1867.97, 16.2048, 0, 0, 0, NULL, 'LS - Rookiespawn', 'ostern'),
(171, 1779.65, -1867.97, 16.2048, 0, 0, 0, NULL, 'LS - Rookiespawn', 'ostern'),
(172, 1760.12, -1867.97, 16.2048, 0, 0, 0, NULL, 'LS - Rookiespawn', 'ostern'),
(173, 1754.46, -1867.98, 16.2048, 0, 0, 0, NULL, 'LS - Rookiespawn', 'ostern'),
(174, 1745.84, -1864.46, 16.2048, 0, 0, 0, NULL, 'LS - Rookiespawn', 'ostern'),
(175, 1740.2, -1864.46, 16.2048, 0, 0, 0, NULL, 'LS - Rookiespawn', 'ostern'),
(176, 1717.71, -1854.54, 13.5773, 0, 0, 0, NULL, 'LS - Rookiespawn', 'ostern'),
(177, 1834.37, -1824.19, 13.1567, 0, 0, 0, NULL, 'LS - Rookiespawn', 'ostern'),
(178, 1866.63, -1863.81, 13.1474, 0, 0, 0, NULL, 'LS - Rookiespawn', 'ostern'),
(179, 1850.05, -1871.29, 17.0434, 0, 0, 0, NULL, 'LS - Rookiespawn', 'ostern'),
(180, 1844.85, -1855.25, 17.978, 0, 0, 0, NULL, 'LS - Rookiespawn', 'ostern'),
(181, 1851.97, -1838.19, 17.078, 0, 0, 0, NULL, 'LS - Rookiespawn', 'ostern'),
(182, 1839.44, -1842.62, 17.078, 0, 0, 0, NULL, 'LS - Rookiespawn', 'ostern'),
(183, 1833.55, -1740.65, 13.4788, 0, 0, 0, NULL, 'LS - Allhambra', 'ostern'),
(184, 1833.56, -1623.97, 13.4889, 0, 0, 0, NULL, 'LS - Allhambra', 'ostern'),
(185, 1929.39, -1624.22, 13.5469, 0, 0, 0, NULL, 'LS - Allhambra', 'ostern'),
(186, 1929.48, -1740.42, 13.5469, 0, 0, 0, NULL, 'LS - Allhambra', 'ostern'),
(187, 487.877, -21.7266, 1003.11, 17, 0, 0, NULL, 'LS - Allhambra - Innenraum', 'ostern'),
(188, 476.726, -21.7256, 1003.11, 17, 0, 0, NULL, 'LS - Allhambra - Innenraum', 'ostern'),
(189, 476.434, -11.3994, 1003.7, 17, 0, 0, NULL, 'LS - Allhambra - Innenraum', 'ostern'),
(190, 476.416, -19.8643, 1003.7, 17, 0, 0, NULL, 'LS - Allhambra - Innenraum', 'ostern'),
(191, 478.091, -7.82227, 1000.68, 17, 0, 0, NULL, 'LS - Allhambra - Innenraum', 'ostern'),
(192, 478.695, -2.52832, 1002.08, 17, 0, 0, NULL, 'LS - Allhambra - Innenraum', 'ostern'),
(193, 495.852, -5.22656, 1002.08, 17, 0, 0, NULL, 'LS - Allhambra - Innenraum', 'ostern'),
(194, 502.995, -1.24121, 1000.68, 17, 0, 0, NULL, 'LS - Allhambra - Innenraum', 'ostern'),
(195, 504.368, -7.75781, 1000.67, 17, 0, 0, NULL, 'LS - Allhambra - Innenraum', 'ostern'),
(196, 502.419, -10.1475, 1000.68, 17, 0, 0, NULL, 'LS - Allhambra - Innenraum', 'ostern'),
(197, 503.648, -24.0537, 1000.68, 17, 0, 0, NULL, 'LS - Allhambra - Innenraum', 'ostern'),
(198, 496.903, -24.5352, 1000.68, 17, 0, 0, NULL, 'LS - Allhambra - Innenraum', 'ostern'),
(199, 490.091, -24.2881, 1000.68, 17, 0, 0, NULL, 'LS - Allhambra - Innenraum', 'ostern'),
(200, 1810.01, -1687.83, 13.5485, 0, 0, 0, NULL, 'LS - Allhambra', 'ostern'),
(201, 1809.97, -1692.48, 13.552, 0, 0, 0, NULL, 'LS - Allhambra', 'ostern'),
(202, 1786.17, -1706.08, 13.5234, 0, 0, 0, NULL, 'LS - Allhambra', 'ostern'),
(203, 1777.81, -1706.32, 13.5234, 0, 0, 0, NULL, 'LS - Allhambra', 'ostern'),
(204, 1762.18, -1704.84, 13.4367, 0, 0, 0, NULL, 'LS - Allhambra', 'ostern'),
(205, 1874.79, -1944.76, 18.6562, 0, 0, 0, NULL, 'LS - Allhambra', 'ostern'),
(206, 1874.67, -1967.12, 18.6562, 0, 0, 0, NULL, 'LS - Brücke Rookiespawn', 'ostern'),
(207, 1851.74, -1966.86, 13.5469, 0, 0, 0, NULL, 'LS - Brücke Rookiespawn', 'ostern'),
(208, 1863.66, -1967.31, 13.5469, 0, 0, 0, NULL, 'LS - Brücke Rookiespawn', 'ostern'),
(209, 1885.43, -1944.42, 13.5469, 0, 0, 0, NULL, 'LS - Brücke Rookiespawn', 'ostern'),
(210, 1937.37, -1969, 13.5469, 0, 0, 0, NULL, 'LS - Brücke Rookiespawn', 'ostern'),
(211, 1946.38, -1967.19, 13.5469, 0, 0, 0, NULL, 'LS - Brücke Rookiespawn', 'ostern'),
(212, 1901.54, -1979.62, 13.5469, 0, 0, 0, NULL, 'LS - Gossenhäuser Rookiespawn', 'ostern'),
(213, 1897.2, -1979.62, 13.5469, 0, 0, 0, NULL, 'LS - Gossenhäuser Rookiespawn', 'ostern'),
(214, 1868.82, -1979.65, 13.5469, 0, 0, 0, NULL, 'LS - Gossenhäuser Rookiespawn', 'ostern'),
(215, 1864.97, -1979.65, 13.5469, 0, 0, 0, NULL, 'LS - Gossenhäuser Rookiespawn', 'ostern'),
(216, 1850.55, -1990.27, 13.5469, 0, 0, 0, NULL, 'LS - Gossenhäuser Rookiespawn', 'ostern'),
(217, 1866.13, -1999.45, 13.5469, 0, 0, 0, NULL, 'LS - Gossenhäuser Rookiespawn', 'ostern'),
(218, 1898.44, -1999.18, 13.5469, 0, 0, 0, NULL, 'LS - Gossenhäuser Rookiespawn', 'ostern'),
(219, 1915.45, -1993.31, 13.5469, 0, 0, 0, NULL, 'LS - Gossenhäuser Rookiespawn', 'ostern'),
(220, 1919.72, -1994.64, 13.5469, 0, 0, 0, NULL, 'LS - Gossenhäuser Rookiespawn', 'ostern'),
(221, 1919.72, -1990.42, 13.5469, 0, 0, 0, NULL, 'LS - Gossenhäuser Rookiespawn', 'ostern'),
(222, 1899.83, -2019.8, 13.5469, 0, 0, 0, NULL, 'LS - Gossenhäuser Rookiespawn', 'ostern'),
(223, 1915.15, -2021.16, 13.5469, 0, 0, 0, NULL, 'LS - Gossenhäuser Rookiespawn', 'ostern'),
(224, 1906.24, -2036.63, 13.5469, 0, 0, 0, NULL, 'LS - Gossenhäuser Rookiespawn', 'ostern'),
(225, 1919.76, -2022.67, 13.5469, 0, 0, 0, NULL, 'LS - Gossenhäuser Rookiespawn', 'ostern'),
(226, 1919.76, -2018.33, 13.5469, 0, 0, 0, NULL, 'LS - Gossenhäuser Rookiespawn', 'ostern'),
(227, 1895.53, -2018.33, 13.5469, 0, 0, 0, NULL, 'LS - Gossenhäuser Rookiespawn', 'ostern'),
(228, 1895.53, -2022.67, 13.5469, 0, 0, 0, NULL, 'LS - Gossenhäuser Rookiespawn', 'ostern'),
(229, 1864.71, -2003.87, 13.5469, 0, 0, 0, NULL, 'LS - Gossenhäuser Rookiespawn', 'ostern'),
(230, 1869.05, -2003.87, 13.5469, 0, 0, 0, NULL, 'LS - Gossenhäuser Rookiespawn', 'ostern'),
(231, 1866.41, -2021.39, 13.5469, 0, 0, 0, NULL, 'LS - Gossenhäuser Rookiespawn', 'ostern'),
(232, 1850.77, -2019.56, 13.5469, 0, 0, 0, NULL, 'LS - Gossenhäuser Rookiespawn', 'ostern'),
(233, 1846.53, -1988.85, 13.5469, 0, 0, 0, NULL, 'LS - Gossenhäuser Rookiespawn', 'ostern'),
(234, 1846.53, -1993.2, 13.5469, 0, 0, 0, NULL, 'LS - Gossenhäuser Rookiespawn', 'ostern'),
(235, 1838.7, -1997.22, 13.5469, 0, 0, 0, NULL, 'LS - Gossenhäuser Rookiespawn', 'ostern'),
(236, 1838.7, -1992.88, 13.5469, 0, 0, 0, NULL, 'LS - Gossenhäuser Rookiespawn', 'ostern'),
(237, 1828.38, -1978.55, 13.5469, 0, 0, 0, NULL, 'LS - Gossenhäuser Rookiespawn', 'ostern'),
(238, 1834.45, -1995.77, 13.5469, 0, 0, 0, NULL, 'LS - Gossenhäuser Rookiespawn', 'ostern'),
(239, 1819.13, -1994.18, 13.5544, 0, 0, 0, NULL, 'LS - Gossenhäuser Rookiespawn', 'ostern'),
(240, 1814.48, -1992.88, 13.5544, 0, 0, 0, NULL, 'LS - Gossenhäuser Rookiespawn', 'ostern'),
(241, 1814.48, -1997.2, 13.5544, 0, 0, 0, NULL, 'LS - Gossenhäuser Rookiespawn', 'ostern'),
(242, 1846.53, -2018.33, 13.5469, 0, 0, 0, NULL, 'LS - Gossenhäuser Rookiespawn', 'ostern'),
(243, 1846.53, -2022.23, 13.5469, 0, 0, 0, NULL, 'LS - Gossenhäuser Rookiespawn', 'ostern'),
(244, 1856.88, -2036.26, 13.5469, 0, 0, 0, NULL, 'LS - Gossenhäuser Rookiespawn', 'ostern'),
(245, 1870.76, -2022.67, 13.5469, 0, 0, 0, NULL, 'LS - Gossenhäuser Rookiespawn', 'ostern'),
(246, 1939.85, -2039.14, 13.5469, 0, 0, 0, NULL, 'LS - Gossenhäuser Rookiespawn', 'ostern'),
(247, 1940.55, -2030.17, 13.5547, 0, 0, 0, NULL, 'LS - Gossenhäuser Rookiespawn', 'ostern'),
(248, 1936.62, -1989.72, 13.5469, 0, 0, 0, NULL, 'LS - Gossenhäuser Rookiespawn', 'ostern'),
(249, 1936.8, -1983.54, 13.5469, 0, 0, 0, NULL, 'LS - Gossenhäuser Rookiespawn', 'ostern'),
(250, 1947.12, -1974.66, 18.8203, 0, 0, 0, NULL, 'LS - Gossenhäuser Rookiespawn', 'ostern'),
(251, 1946.65, -1986.75, 18.2969, 0, 0, 0, NULL, 'LS - Gossenhäuser Rookiespawn', 'ostern'),
(252, 1946.18, -1998.64, 17.6406, 0, 0, 0, NULL, 'LS - Gossenhäuser Rookiespawn', 'ostern'),
(253, 1945.3, -2018.12, 19.1406, 0, 0, 0, NULL, 'LS - Gossenhäuser Rookiespawn', 'ostern'),
(254, 1945.74, -2035.15, 18.8516, 0, 0, 0, NULL, 'LS - Gossenhäuser Rookiespawn', 'ostern'),
(255, 1894.23, -2094.36, 15.0282, 0, 0, 0, NULL, 'LS - Gossenhäuser Taxibase', 'ostern'),
(256, 1885.79, -2094.4, 15.0261, 0, 0, 0, NULL, 'LS - Gossenhäuser Taxibase', 'ostern'),
(257, 1903.63, -2093.87, 15.0305, 0, 0, 0, NULL, 'LS - Gossenhäuser Taxibase', 'ostern'),
(258, 1911.03, -2094.1, 15.0323, 0, 0, 0, NULL, 'LS - Gossenhäuser Taxibase', 'ostern'),
(259, 1864.15, -2093.55, 15.0312, 0, 0, 0, NULL, 'LS - Gossenhäuser Taxibase', 'ostern'),
(260, 1872.56, -2094.7, 15.0312, 0, 0, 0, NULL, 'LS - Gossenhäuser Taxibase', 'ostern'),
(261, 1882.41, -2093.25, 15.0234, 0, 0, 0, NULL, 'LS - Gossenhäuser Taxibase', 'ostern'),
(262, 1861.73, -2094.7, 15.0312, 0, 0, 0, NULL, 'LS - Gossenhäuser Taxibase', 'ostern'),
(263, 1853.21, -2094.63, 15.0312, 0, 0, 0, NULL, 'LS - Gossenhäuser Taxibase', 'ostern'),
(264, 1843.49, -2094.36, 15.0312, 0, 0, 0, NULL, 'LS - Gossenhäuser Taxibase', 'ostern'),
(265, 1835.69, -2094.54, 15.0312, 0, 0, 0, NULL, 'LS - Gossenhäuser Taxibase', 'ostern'),
(266, 1910.68, -2110.33, 15.1641, 0, 0, 0, NULL, 'LS - Gossenhäuser Taxibase', 'ostern'),
(267, 1903.32, -2109.27, 15.1641, 0, 0, 0, NULL, 'LS - Gossenhäuser Taxibase', 'ostern'),
(268, 1893.45, -2108.9, 15.1641, 0, 0, 0, NULL, 'LS - Gossenhäuser Taxibase', 'ostern'),
(269, 1885.29, -2109.26, 15.1641, 0, 0, 0, NULL, 'LS - Gossenhäuser Taxibase', 'ostern'),
(270, 1882.04, -2109.76, 15.1641, 0, 0, 0, NULL, 'LS - Gossenhäuser Taxibase', 'ostern'),
(271, 1873.89, -2109.47, 15.1641, 0, 0, 0, NULL, 'LS - Gossenhäuser Taxibase', 'ostern'),
(272, 1863.87, -2110.29, 15.1641, 0, 0, 0, NULL, 'LS - Gossenhäuser Taxibase', 'ostern'),
(273, 1860.29, -2109.81, 15.1667, 0, 0, 0, NULL, 'LS - Gossenhäuser Taxibase', 'ostern'),
(274, 1852.47, -2109.56, 15.1691, 0, 0, 0, NULL, 'LS - Gossenhäuser Taxibase', 'ostern'),
(275, 1842.32, -2109.64, 15.1716, 0, 0, 0, NULL, 'LS - Gossenhäuser Taxibase', 'ostern'),
(276, 1834.8, -2109.33, 15.1734, 0, 0, 0, NULL, 'LS - Gossenhäuser Taxibase', 'ostern'),
(277, 1794.06, -2078.77, 13.5469, 0, 0, 0, NULL, 'LS - Gossenhäuser Taxibase', 'ostern'),
(278, 1781.22, -2086.21, 13.5469, 0, 0, 0, NULL, 'LS - Gossenhäuser Taxibase', 'ostern'),
(279, 1760.59, -2088.41, 13.5511, 0, 0, 0, NULL, 'LS - Gossenhäuser Taxibase', 'ostern'),
(280, 1734.94, -2084.75, 13.5469, 0, 0, 0, NULL, 'LS - Gossenhäuser Taxibase', 'ostern'),
(281, 1711.18, -2088.57, 13.5469, 0, 0, 0, NULL, 'LS - Gossenhäuser Taxibase', 'ostern'),
(282, 1689.34, -2078.76, 13.5469, 0, 0, 0, NULL, 'LS - Gossenhäuser Taxibase', 'ostern'),
(283, 1666.94, -2091.48, 13.5469, 0, 0, 0, NULL, 'LS - Gossenhäuser Taxibase', 'ostern'),
(284, 1663.05, -2082.85, 13.5469, 0, 0, 0, NULL, 'LS - Gossenhäuser Taxibase', 'ostern'),
(285, 1664.66, -2133.08, 13.5469, 0, 0, 0, NULL, 'LS - Gossenhäuser Taxibase', 'ostern'),
(286, 1681.23, -2163.49, 13.5547, 0, 0, 0, NULL, 'LS - Gossenhäuser Taxibase', 'ostern'),
(287, 1694.05, -2139.2, 13.5469, 0, 0, 0, NULL, 'LS - Gossenhäuser Taxibase', 'ostern'),
(288, 1715.49, -2140.84, 13.5469, 0, 0, 0, NULL, 'LS - Gossenhäuser Taxibase', 'ostern'),
(289, 1735.11, -2143.18, 13.5515, 0, 0, 0, NULL, 'LS - Gossenhäuser Taxibase', 'ostern'),
(290, 1762.15, -2140.84, 13.5469, 0, 0, 0, NULL, 'LS - Gossenhäuser Taxibase', 'ostern'),
(291, 1788.35, -2140.23, 13.5543, 0, 0, 0, NULL, 'LS - Gossenhäuser Taxibase', 'ostern'),
(292, 1804.69, -2141.25, 13.5469, 0, 0, 0, NULL, 'LS - Gossenhäuser Taxibase', 'ostern'),
(293, 1808.26, -2136.58, 13.5469, 0, 0, 0, NULL, 'LS - Gossenhäuser Taxibase', 'ostern'),
(294, 1807.74, -2152.51, 13.6537, 0, 0, 0, NULL, 'LS - Gossenhäuser Taxibase', 'ostern'),
(295, 1799.48, -2130.23, 17.3359, 0, 0, 0, NULL, 'LS - Gossenhäuser Taxibase', 'ostern'),
(296, 1756.42, -2132.32, 17.447, 0, 0, 0, NULL, 'LS - Gossenhäuser Taxibase', 'ostern'),
(297, -103.473, -24.3789, 1000.72, 3, 5, 0, NULL, 'Sexshop - Innenraum', 'ostern'),
(298, -115.923, -12.5771, 1000.72, 3, 5, 0, NULL, 'Sexshop - Innenraum', 'ostern'),
(299, -115.862, -8.97852, 1000.72, 3, 5, 0, NULL, 'Sexshop - Innenraum', 'ostern'),
(300, -112.547, -8.99023, 1000.72, 3, 5, 0, NULL, 'Sexshop - Innenraum', 'ostern'),
(301, -108.143, -8.53809, 1000.72, 3, 5, 0, NULL, 'Sexshop - Innenraum', 'ostern'),
(302, -103.884, -16.3623, 1000.72, 3, 5, 0, NULL, 'Sexshop - Innenraum', 'ostern'),
(303, 1600.6, -1842.27, 13.4974, 0, 0, 0, NULL, 'LS - Mechajob', 'ostern'),
(304, 1596.45, -1819.07, 13.4138, 0, 0, 0, NULL, 'LS - Mechajob', 'ostern'),
(305, 1592.54, -1785.91, 13.2804, 0, 0, 0, NULL, 'LS - Mechajob', 'ostern'),
(306, 1615.28, -1779.54, 13.5315, 0, 0, 0, NULL, 'LS - Mechajob', 'ostern'),
(307, 1662.76, -1906.88, 21.9542, 0, 0, 0, NULL, 'LS - Mechajob', 'ostern'),
(308, 1667.77, -2039.31, 21.9609, 0, 0, 0, NULL, 'LS - Mechajob', 'ostern'),
(309, 2009.73, -2149.96, 19.396, 0, 0, 0, NULL, 'LS - Mechajob', 'ostern'),
(310, 2086.5, -2136.43, 19.4818, 0, 0, 0, NULL, 'LS - Mechajob', 'ostern'),
(311, 2101.15, -2148.73, 19.489, 0, 0, 0, NULL, 'LS - Mechajob', 'ostern'),
(312, 2061.77, -2155.34, 13.2016, 0, 0, 0, NULL, 'LS - Mechajob', 'ostern'),
(313, 2106.53, -2159.65, 16.0759, 0, 0, 0, NULL, 'LS - Mechajob', 'ostern'),
(314, 2101.55, -2162.54, 16.0759, 0, 0, 0, NULL, 'LS - Mechajob', 'ostern'),
(315, 2073.69, -2090.86, 16.0759, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(316, 2051.51, -2090.61, 16.0759, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(317, 2051.4, -2083.59, 18.7733, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(318, 2050.14, -2094.55, 18.7733, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(319, 2078.19, -2091.04, 18.7733, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(320, 2068.83, -2089.78, 18.7733, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(321, 2085.55, -2067.07, 17.3572, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(322, 2060.61, -2067.07, 17.3572, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(323, 2038.15, -2066.69, 17.3572, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(324, 2017.43, -2066.73, 17.3572, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(325, 2096.62, -2048.78, 16.0759, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(326, 2093, -2042.73, 16.0759, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(327, 2092.57, -2048.24, 18.7733, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(328, 2093.13, -2038.48, 18.7733, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(329, 2093, -2071.71, 13.5469, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(330, 2212.16, -2205.55, 15.1711, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(331, 2204.36, -2212.04, 15.1711, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(332, 2196.45, -2218.8, 15.1711, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(333, 2189.23, -2226, 15.1711, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(334, 2189.44, -2238.92, 13.4483, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(335, 2175.1, -2216.97, 16.1072, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(336, 2174.54, -2211.04, 16.1072, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(337, 2188.6, -2196.6, 16.1072, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(338, 2189.81, -2199.43, 18.8045, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(339, 2178.27, -2211.85, 18.8045, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(340, 2175.68, -2234.98, 15.8181, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(341, 2179.99, -2233.74, 18.5155, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(342, 2183.29, -2227.69, 20.1162, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(343, 2190.86, -2219.63, 20.0781, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(344, 2197.76, -2213.14, 20.1246, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(345, 2205.09, -2205.75, 20.1066, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(346, 2119.14, -2272.5, 20.6719, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(347, 2133.92, -2280.88, 20.6719, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(348, 2136.85, -2290.85, 20.6646, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(349, 2159.25, -2265.04, 20.6667, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(350, 2145.65, -2250.92, 20.6641, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(351, 2124.56, -2267.62, 20.6678, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(352, 2174.1, -2262.33, 13.3387, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(353, 2158.32, -2278.15, 13.339, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(354, 2152.76, -2287.58, 13.353, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(355, 2165.84, -2318.31, 15.8181, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(356, 2159.16, -2316.35, 15.8181, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(357, 2179.97, -2336.33, 15.8181, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(358, 2174.48, -2334.82, 15.8181, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(359, 2168.79, -2247.35, 20.1587, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(360, 2166.41, -2258.44, 14.1066, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(361, 2129, -2271.52, 14.7843, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(362, 2125.31, -2268.96, 14.7841, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(363, 2202.52, -2335.41, 13.5469, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(364, 2229.2, -2308.67, 13.5469, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(365, 2233.56, -2282.79, 14.3751, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(366, 2230.31, -2286.24, 14.3751, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(367, 2232.84, -2289.2, 14.3751, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(368, 2235.89, -2285.86, 14.3751, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(369, 2244.92, -2271.18, 14.3751, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(370, 2247.69, -2267.92, 14.3751, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(371, 2251.01, -2264.81, 14.3751, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(372, 2253.93, -2261.63, 14.3751, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(373, 2282.99, -2206.21, 13.1079, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(374, 2341.53, -2154.88, 13.1082, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(375, 2277.48, -2107.08, 13.1221, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(376, 2279.1, -2112.61, 13.11, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(377, 2240.28, -2152.92, 13.1133, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(378, 2554.8, -2472.91, 16.2244, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(379, 2546.94, -2476.21, 16.2244, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(380, 2529.21, -2434.48, 17.8828, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(381, 2510.57, -2415.61, 17.8828, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(382, 2550.6, -2455.82, 17.8828, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(383, 2632.09, -2459.81, 3, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(384, 2549.02, -2351.46, 13.1863, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(385, 2494.99, -2356.23, 13.1868, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(386, 2466.52, -2384.45, 13.1826, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(387, 2440.98, -2410.61, 13.1934, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(388, 2623.01, -2350.74, 17.3403, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(389, 2651.75, -2351.73, 17.3403, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(390, 2684.7, -2351.43, 17.3403, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(391, 2713.55, -2351.39, 17.3403, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(392, 2746.86, -2351.55, 17.3403, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(393, 2643.86, -2346.57, 13.6328, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(394, 2685.54, -2329.56, 3, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(395, 2678.98, -2330.11, 3, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(396, 2779.01, -2376.96, 16.2244, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(397, 2772.6, -2373.57, 16.2244, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(398, 2766.52, -2372.32, 18.9217, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(399, 2783.52, -2377.55, 18.9217, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(400, 2778.38, -2391.71, 16.2244, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(401, 2781.23, -2381.27, 16.2244, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(402, 2782.41, -2372.73, 13.6328, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(403, 2798.28, -2393.29, 13.956, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(404, 2775.3, -2429.42, 14.3143, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(405, 2801.35, -2429.51, 14.3143, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(406, 2801.37, -2406.37, 14.3143, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(407, 2775.23, -2406.08, 14.3143, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(408, 2775.35, -2444.22, 14.3143, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(409, 2801.11, -2444.21, 14.3143, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(410, 2801.35, -2467.23, 14.3143, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(411, 2775.26, -2467.54, 14.3143, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(412, 2801.24, -2505.47, 14.3143, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(413, 2801.3, -2482.73, 14.3143, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(414, 2775.5, -2482.36, 14.3143, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(415, 2774.96, -2505.7, 14.3143, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(416, 2767.38, -2524.44, 16.2244, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(417, 2776.48, -2524.25, 18.9217, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(418, 2767.01, -2521.47, 18.9217, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(419, 2775.34, -2529.56, 18.9217, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(420, 2774.73, -2539.1, 18.9217, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(421, 2804.12, -2617.26, 15.3809, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(422, 2800.83, -2612.54, 19.22, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(423, 2804.57, -2603.57, 19.22, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(424, 2769.05, -2644.91, 18.1906, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(425, 2769.62, -2695.21, 18.1906, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(426, 2786.84, -2751.84, 13.3345, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(427, 2749.77, -2664.69, 13.3508, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(428, 2784.69, -2747.75, 16.8936, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(429, 2701.76, -2740.61, 26.5488, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(430, 2634.38, -2748.57, 17.8453, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(431, 2625.15, -2732.03, 13.3479, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(432, 2574.01, -2722.34, 13.3355, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(433, 2573.64, -2710.01, 13.3363, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(434, 2619.99, -2640.67, 13.3481, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(435, 2606.5, -2641.42, 13.3558, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(436, 2581.15, -2653.8, 26.4828, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(437, 2608.97, -2620.87, 13.059, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(438, 2623.25, -2607.95, 3.36094, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(439, 2618.25, -2608.96, 3.36094, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(440, 2136.69, -1939.79, 13.1063, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(441, 2152.98, -1934.39, 13.1089, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(442, 2152.84, -1920.13, 13.1068, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(443, 2158.07, -1919.86, 13.1003, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(444, 2200.89, -1971.7, 13.7841, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(445, 2191.63, -1970.29, 13.5599, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(446, 2203.03, -1969.47, 13.5571, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(447, 2161.55, -1985.91, 14.0084, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(448, 2156.5, -1992.82, 14.0409, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(449, 2160.51, -1996.89, 14.8197, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(450, 2202.12, -1998.19, 13.5469, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(451, 2212.02, -2026.17, 17.2712, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(452, 2195.4, -2029.89, 15.2556, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(453, 2686.07, -2381.64, 16.9135, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(454, 2656.49, -2381.94, 16.8974, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(455, 2626.48, -2381.41, 16.9129, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(456, 2743.78, -2381.28, 16.9014, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(457, 2743.96, -2453.67, 13.8623, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(458, 2730.98, -2476.88, 17.1559, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(459, 2731.15, -2428.26, 17.1551, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(460, 2744.68, -2516.39, 16.9367, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(461, 2696.28, -2516.24, 16.9321, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(462, 2613.79, -2496.32, 32.8945, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(463, 2613.56, -2511.82, 32.9177, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(464, 2545.13, -2536.56, 12.9189, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(465, 2549.5, -2557.98, 13.1017, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(466, 2518.81, -2629.07, 13.2028, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(467, 2504.8, -2640.33, 13.4355, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(468, 2520.08, -2689.05, 13.1997, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(469, 2471.68, -2697.68, 3, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(470, 2477.95, -2696.91, 3, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(471, 2381.08, -2690.08, 13.2212, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(472, 2445.88, -2553.12, 17.47, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(473, 2445.75, -2583.78, 17.475, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(474, 2445.92, -2612.65, 17.4668, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(475, 2446.16, -2642.96, 17.4756, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(476, 2446.02, -2524.67, 17.4719, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(477, 2274.46, -2674.85, 13.1841, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(478, 2155.33, -2701.36, 13.1079, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(479, 2208.37, -2667.28, 17.4412, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(480, 2160.21, -2666.93, 17.4455, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(481, 2267.39, -2643.91, 13.1833, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(482, 2267.27, -2633.82, 13.167, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(483, 2271.25, -2601.47, 7.87577, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(484, 2271.17, -2563.03, 7.87401, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(485, 2271.19, -2495.69, 7.8737, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(486, 2273.99, -2452.94, 13.1111, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(487, 2238.04, -2405.85, 16.9925, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(488, 2272.85, -2372.22, 16.9839, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(489, 2310.37, -2375.83, 13.1046, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(490, 2314.78, -2391.78, 2.55823, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(491, 2337.39, -2306.8, 16.9938, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(492, 2371.46, -2272.97, 16.9877, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(493, 2447.56, -2209.54, 26.6328, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(494, 2466.44, -2208.24, 13.114, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(495, 2473.3, -2207.72, 13.1186, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(496, 2479.42, -2207.4, 13.137, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(497, 2487.05, -2208.23, 13.1345, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(498, 2494.22, -2208.32, 13.1204, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(499, 2523.12, -2203.75, 13.1112, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(500, 2546.58, -2201.32, 13.1082, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(501, 2556.24, -2194.54, 13.1084, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(502, 2582.98, -2191.24, 13.1108, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(503, 2599.73, -2193.59, 13.1112, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(504, 2588.45, -2206.68, 16.9205, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(505, 2513.82, -2206, 16.9293, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(506, 2626.31, -2193.56, 16.9531, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(507, 2637.64, -2201.42, 14.4987, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(508, 2663.32, -2187.3, 13.1208, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(509, 2710.91, -2187.48, 13.1112, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(510, 2759.18, -2193.44, 13.1193, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(511, 2759.88, -2209.02, 13.1085, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(512, 2756.46, -2227.79, 15.7494, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(513, 2543.22, -2249.54, 13.109, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(514, 2528.61, -2250.35, 2.5619, 0, 0, 0, NULL, 'LS - Freie wildbahn', 'ostern'),
(515, 2265.95, -2086.92, 13.1114, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(516, 2802.3, -2356.85, 13.2031, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(517, 2639.64, -2459.32, 2.60948, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(518, 2554.63, -2346.61, 13.182, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(519, 2525.42, -2333.95, 13.1975, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(520, 2494.34, -2385.8, 13.1874, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(521, 2468.3, -2411.99, 13.1869, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(522, 2416.91, -2452.52, 13.3265, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(523, 2431.42, -2467.43, 13.232, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(524, 2404.44, -2577.44, 15.877, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(525, 2415.04, -2525.21, 17.4725, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(526, 2414.6, -2553.98, 17.4725, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(527, 2414.32, -2583.25, 17.4805, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(528, 2414.2, -2613.38, 17.4765, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(529, 2414.29, -2643.47, 17.481, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(530, 2432.21, -2490.05, 16.2244, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(531, 2437.07, -2489.53, 16.2244, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(532, 2433.83, -2486.62, 18.9217, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(533, 2265.98, -2635.98, 15.8181, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(534, 2263.23, -2638.59, 15.8181, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(535, 2262.96, -2634.43, 18.5155, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(536, 2262.54, -2643.96, 18.5155, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(537, 2191.76, -2468.34, 13.1142, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(538, 2190.81, -2476.21, 13.1085, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(539, 2206.07, -2421.81, 13.1113, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(540, 2218.24, -2407.82, 13.1088, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(541, 2264.06, -2386.65, 13.0618, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(542, 2326.8, -2360.84, 13.1069, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(543, 2323.79, -2357.93, 13.1078, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(544, 2242.46, -2179.49, 16.1072, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(545, 2246.56, -2189.12, 16.1072, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(546, 2244.73, -2188.35, 18.8045, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(547, 2238.81, -2180.98, 18.8045, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(548, 2230.26, -2173.3, 18.8045, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(549, 2223.55, -2166.03, 18.8045, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(550, 2227.09, -2164.71, 16.1072, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(551, 2225.38, -2162.51, 13.5469, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(552, 2240.11, -2176.25, 13.5469, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(553, 2233.07, -2170.41, 13.5538, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(554, 2368.97, -2032.74, 13.4972, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(555, 2660.32, -2055.01, 13.1112, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(556, 2639.07, -2023.64, 13.0739, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(557, 2625.02, -2017.46, 13.1186, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(558, 2618.42, -2039.87, 13.1239, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(559, 2755.58, -2094.53, 11.7507, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(560, 2768.37, -2089.81, 11.5917, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(561, 2780.75, -2073.81, 11.4615, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(562, 2756.62, -2019.66, 13.562, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(563, 2865.89, -2129.49, 4.92358, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(564, 2876.31, -1953.48, 7.79704, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(565, 2875.7, -1972.17, 8.10815, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(566, 2870.22, -1881.67, 10.6821, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(567, 2802.16, -1908.69, 13.5469, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(568, 2786.52, -1916.92, 17.3203, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(569, 2786.3, -1933.45, 17.3203, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(570, 2792, -1941.5, 17.3129, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(571, 2794.38, -1947.51, 17.3203, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(572, 2787.07, -1950.24, 17.3203, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(573, 2786.45, -1976.96, 13.5494, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(574, 2786.98, -1971.48, 13.5469, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(575, 2787.07, -1954.88, 13.5469, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(576, 2787.07, -1950.28, 13.5469, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(577, 2787.08, -1938.56, 13.5469, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(578, 2787.08, -1934.81, 13.5469, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(579, 2787.08, -1933.3, 13.5469, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(580, 2786.43, -1918.07, 13.5469, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(581, 2787.08, -1915.79, 13.5469, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(582, 2786.23, -1912.04, 13.5469, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(583, 2787.15, -1808.5, 11.41, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(584, 2795.38, -1798.6, 11.4141, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(585, 2801.23, -1787.03, 11.4011, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(586, 2805.16, -1773.72, 11.4012, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(587, 2806.89, -1760.56, 11.421, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(588, 2805.55, -1747.52, 11.4054, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(589, 2802.01, -1734.75, 11.4047, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(590, 2795.44, -1721.94, 11.4054, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(591, 2787.17, -1711.71, 11.4054, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(592, 2776.62, -1702.74, 11.4207, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(593, 2764.8, -1696.38, 11.3943, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(594, 2751.1, -1691.91, 11.411, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(595, 2737.65, -1690.78, 11.3986, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(596, 2724.97, -1691.97, 11.4048, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(597, 2712.03, -1695.49, 11.4045, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(598, 2699.1, -1702.66, 11.4061, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(599, 2689.19, -1710.84, 11.4064, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(600, 2680.65, -1721.15, 11.4019, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(601, 2673.92, -1732.98, 11.4057, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(602, 2670.04, -1745.95, 11.4002, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(603, 2668.4, -1760.41, 11.4083, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(604, 2669.85, -1773.44, 11.4025, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(605, 2673.61, -1786.33, 11.4053, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(606, 2679.78, -1797.76, 11.4143, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(607, 2688.3, -1808.37, 11.406, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(608, 2699.25, -1817.72, 11.414, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(609, 2711.06, -1823.64, 11.4047, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(610, 2724.08, -1828.07, 11.4019, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(611, 2737.13, -1829.1, 11.3987, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(612, 2811.89, -1857.78, 9.48761, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(613, 2812.74, -1841.05, 9.68262, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(614, 2919.01, -1595.78, 10.597, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(615, 2855.86, -1584.9, 21.0614, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(616, 2825.95, -1531.43, 10.691, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(617, 2792.1, -1535.29, 10.6532, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern');
INSERT INTO `ostereier` (`ID`, `X`, `Y`, `Z`, `Inte`, `Dim`, `State`, `gefundenVon`, `comment`, `event`) VALUES
(618, 2791.84, -1576.31, 10.6728, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(619, 2769.69, -1601.41, 10.4896, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(620, 2766.01, -1602.92, 10.9219, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(621, 2766.45, -1617.68, 10.9219, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(622, 2768.47, -1626.45, 10.9272, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(623, 2768.34, -1628.45, 12.1775, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(624, 2789.2, -1628.74, 10.9272, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(625, 2793.47, -1626.94, 10.9219, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(626, 2955.78, -1486.41, 1.18201, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(627, 2955.3, -1475.2, 4.94729, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(628, 2839.26, -1345.82, 10.6216, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(629, 2840.87, -1364.54, 12.996, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(630, 2825.29, -1413.53, 20.9274, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(631, 2796.33, -1408.88, 22.9846, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(632, 2784.03, -1419.76, 24.3317, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(633, 2779.15, -1419.28, 24.3097, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(634, 2774.57, -1397.32, 24.3152, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(635, 2774.47, -1394.19, 24.3158, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(636, 2771.38, -1404.79, 26.7241, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(637, 2771.31, -1378.3, 29.5867, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(638, 2750.98, -1383.36, 38.9237, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(639, 2750.98, -1418.06, 38.9345, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(640, 2751.73, -1421.5, 31.7142, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(641, 2770.93, -1335.17, 39.2438, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(642, 2751.78, -1321.42, 47.9888, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(643, 2770.96, -1323.17, 49.5579, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(644, 2748.31, -1374.9, 49.5538, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(645, 2751.83, -1300.88, 52.6631, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(646, 2704.68, -1283.31, 58.9453, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(647, 2697.93, -1276.2, 58.9453, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(648, 2710.63, -1324.58, 58.9453, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(649, 2654.73, -1325.71, 58.9453, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(650, 2654.77, -1267.94, 58.9453, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(651, 2755.72, -1283.78, 56.5938, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(652, 2752.05, -1284.39, 56.5938, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(653, 2751.69, -1280.33, 56.5864, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(654, 2764.44, -1242.79, 53.5187, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(655, 2778.94, -1246.5, 48.2119, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(656, 2805.17, -1242.7, 45.3403, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(657, 2785.17, -1269.74, 46.2585, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(658, 2779.57, -1288.55, 42.1799, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(659, 2778.1, -1293.34, 41.1103, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(660, 2779.01, -1313.26, 36.6133, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(661, 2813.27, -1311.03, 36.7463, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(662, 2808.74, -1307.59, 37.6756, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(663, 2814.21, -1288.66, 42.0941, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(664, 2779.05, -1340.78, 30.1995, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(665, 2774.94, -1346.21, 28.7412, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(666, 2779.81, -1365.36, 24.1895, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(667, 2807.27, -1353.57, 26.5517, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(668, 2812.89, -1332.14, 31.7192, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(669, 2820.49, -1467.31, 15.8207, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(670, 2820.33, -1467.46, 19.7825, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(671, 2820.53, -1467.17, 23.7513, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(672, 2820.37, -1467.31, 27.7268, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(673, 2820.19, -1467.12, 31.6846, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(674, 2820.22, -1467.36, 35.6688, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(675, 2820.3, -1467.28, 39.6276, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(676, 2789.38, -1467.51, 39.6168, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(677, 2789.36, -1425.74, 39.6349, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(678, 2819.85, -1425.62, 39.6352, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(679, 2755.84, -1475.8, 30.0144, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(680, 2772.39, -1476.35, 30.0154, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(681, 2784.26, -1476.05, 30.0154, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(682, 2785.79, -1446.29, 30.0177, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(683, 2770.45, -1429.72, 30.015, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(684, 2755.07, -1429.35, 30.0098, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(685, 2748.56, -1360.7, 40.6261, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(686, 2770.05, -1367.41, 39.2594, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(687, 2749.96, -1245.26, 59.9514, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(688, 2749.09, -1232.07, 62.0571, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(689, 2749.82, -1230.02, 63.6406, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(690, 2749.57, -1218.27, 65.3138, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(691, 2749.49, -1211.89, 65.8534, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(692, 2749.37, -1201.29, 68.5799, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(693, 2749.05, -1195.88, 69.2086, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(694, 2710.31, -1240.1, 59.1456, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(695, 2695.21, -1231.78, 59.2132, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(696, 2694.28, -1216.48, 63.772, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(697, 2695.73, -1202.33, 67.5717, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(698, 2763.75, -1182.4, 68.9689, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(699, 2764.78, -1191.45, 68.9686, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(700, 2749.36, -1181.75, 68.9642, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(701, 2703.43, -1130.17, 69.1422, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(702, 2697.98, -1120.44, 69.1427, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(703, 2676.94, -1109.91, 68.8974, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(704, 2667.98, -1121.9, 67.1229, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(705, 2631.37, -1107.66, 67.9838, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(706, 2613.96, -1107, 67.9236, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(707, 2615.01, -1126.24, 65.5098, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(708, 2626.13, -1128.23, 65.1496, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(709, 2611.51, -1226.62, 53.0557, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(710, 2611.03, -1211.33, 57.5795, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(711, 2604.31, -1196.73, 61.3908, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(712, 2597.7, -1204.07, 57.8596, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(713, 2598.02, -1219.36, 53.5965, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(714, 2598.29, -1232.79, 49.6907, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(715, 2583.42, -1198.13, 59.4421, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(716, 2558.37, -1209.73, 54.0937, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(717, 2534.56, -1205.16, 55.8798, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(718, 2508.85, -1211.72, 50.4297, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(719, 2475.44, -1212.07, 35.7985, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(720, 2489.53, -1209.29, 39.5563, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(721, 2435.87, -1206.75, 32.6092, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(722, 2420.19, -1206.87, 30.2312, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(723, 2401.06, -1207.33, 28.1835, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(724, 2393.41, -1215.03, 26.6044, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(725, 2398.77, -1223.65, 25.3416, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(726, 2393.91, -1238.02, 24.4233, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(727, 2467.74, -1218.92, 30.5161, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(728, 2489.86, -1219.92, 34.2894, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(729, 2517.35, -1219.37, 42.9376, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(730, 2539.42, -1218.49, 49.9276, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(731, 2521.33, -1225.42, 38.5799, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(732, 2524.4, -1232.42, 38.5783, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(733, 2515.08, -1242.86, 38.5866, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(734, 2510.07, -1234.6, 38.5872, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(735, 2472.59, -1239.6, 31.8008, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(736, 2479.62, -1233.07, 32.154, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(737, 2464.77, -1224.15, 32.2375, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(738, 2470.48, -1244.94, 29.0229, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(739, 2383.72, -1125.23, 29.2783, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(740, 2402.28, -1123.62, 29.943, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(741, 2402.91, -1129.53, 29.8245, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(742, 2422.49, -1128.42, 33.9897, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(743, 2429.4, -1123.13, 34.1572, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(744, 2435.07, -1125.51, 34.4041, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(745, 2482.82, -1136.96, 38.6929, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(746, 2481.31, -1124.75, 39.0439, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(747, 2488, -1124.48, 39.135, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(748, 2493.88, -1124.83, 39.2229, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(749, 2494.66, -1134.54, 39.2313, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(750, 2392.59, -1121.04, 39.9553, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(751, 2414.38, -1120.38, 40.1862, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(752, 2414.6, -1101.93, 39.6835, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(753, 2392.82, -1104.6, 38.8267, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(754, 2428.66, -1116.88, 41.877, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(755, 2416.7, -1120.05, 40.136, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(756, 2430.64, -1116.67, 42.0169, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(757, 2444.61, -1117.26, 42.171, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(758, 2446.75, -1117.25, 42.3336, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(759, 2477.36, -1121.33, 43.5763, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(760, 2503.28, -1102.48, 56.2031, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(761, 2504.18, -1117.25, 56.2031, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(762, 2511.73, -1119.21, 55.9382, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(763, 2541.86, -1117.88, 61.7213, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(764, 2583.01, -1109.23, 66.3679, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(765, 2593.28, -1095.48, 68.0155, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(766, 2593.3, -1083.02, 68.8438, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(767, 2592.5, -1080.16, 69.098, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(768, 2593.37, -1058.91, 69.1399, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(769, 2573.03, -1059.68, 69.1181, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(770, 2631.7, -1059.33, 69.1683, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(771, 2607.99, -1059.08, 69.1517, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(772, 2608.58, -1078.86, 69.1507, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(773, 2580.73, -976.649, 80.9196, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(774, 2592.32, -975.985, 80.9475, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(775, 2594.99, -939.948, 80.7446, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(776, 2573.91, -945.143, 80.9147, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(777, 2542.6, -963.749, 81.5947, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(778, 2547.63, -958.77, 81.9869, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(779, 2487.64, -945.513, 81.7899, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(780, 2488.36, -965.183, 81.7456, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(781, 2462.44, -948.537, 79.6549, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(782, 2443.56, -960.871, 79.601, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(783, 2443.47, -965.794, 79.5984, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(784, 2449.57, -964.076, 79.6339, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(785, 2327.24, -1051.7, 51.9125, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(786, 2361.75, -1034.15, 53.7789, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(787, 2379.73, -1032.79, 53.4738, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(788, 2371.88, -1053.92, 53.7194, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(789, 2355.82, -1059.65, 53.5185, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(790, 2319.23, -1064.14, 51.7066, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(791, 2249.63, -1059.61, 55.5008, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(792, 2258.37, -1030.61, 52.2276, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(793, 2265.87, -1032.45, 58.8559, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(794, 2270.42, -1028.56, 58.8664, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(795, 2267.72, -1022.78, 53.3586, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(796, 2254.79, -1010.15, 56.9104, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(797, 2232.75, -1009.53, 59.3172, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(798, 2250.36, -1027.73, 55.4151, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(799, 2256.97, -1069.51, 49.0357, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(800, 2280.34, -1040.88, 49.0671, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(801, 2296.91, -1054.35, 49.934, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(802, 2285.36, -1102.77, 37.5434, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(803, 2220.99, -1193.88, 25.4963, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(804, 2240.93, -1191.66, 33.5312, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(805, 2245.3, -1191.63, 33.5312, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(806, 2247.01, -1189.91, 33.5312, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(807, 2241.62, -1174, 33.5312, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(808, 2241.86, -1157.99, 33.524, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(809, 2223.55, -1186.82, 33.5312, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(810, 2213.76, -1187.16, 33.5312, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(811, 2203.8, -1186.77, 33.5312, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(812, 2194.43, -1183.29, 33.5312, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(813, 2193.44, -1174.58, 33.5312, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(814, 2193.12, -1164.71, 33.524, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(815, 2192.85, -1156.39, 33.524, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(816, 2205.99, -1144.16, 33.5312, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(817, 2201.25, -1151.37, 25.8619, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(818, 2209.47, -1148.51, 25.7528, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(819, 2202.06, -1151.73, 29.8044, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(820, 2201.7, -1180.49, 29.7971, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(821, 2232.38, -1179.89, 29.8044, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(822, 2217, -1179.19, 25.3751, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(823, 2232.41, -1153.99, 25.8906, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(824, 2207.53, -1100.85, 31.0406, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(825, 2191.67, -1089.86, 40.0608, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(826, 2189.52, -1082.13, 42.9826, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(827, 2220.49, -1083.41, 41.3345, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(828, 2205, -1058.98, 44.0477, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(829, 2199.71, -1054.55, 47.0897, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(830, 2186.39, -997.864, 66.4688, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(832, 1797.94, -1578.72, 14.0897, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(833, 1816.75, -1420.6, 12.9879, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(834, 1812.95, -1435.16, 12.9943, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(835, 1371.14, -864.178, 40.9437, 0, 0, 0, NULL, 'vine-Auffahrt ', 'ostern'),
(836, 1789.1, -1391.75, 15.3188, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(837, 1788.83, -1387.74, 15.7578, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(838, 1788.97, -1380.8, 15.7578, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(839, 1788.69, -1372.7, 15.3282, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(840, 1766.96, -1372.6, 15.3186, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(841, 1817.85, -1323.64, 14.4805, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(842, 1814.38, -1323.83, 14.4806, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(843, 1831.21, -1323.7, 14.4969, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(844, 1831.31, -1348.57, 14.4941, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(845, 1831.64, -1359.4, 14.4907, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(846, 1472.76, -700.013, 91.9408, 0, 0, 0, NULL, 'vine-kurve ', 'ostern'),
(847, 1831.39, -1385.07, 14.484, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(848, 1810.17, -1384.95, 14.476, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(849, 1813.6, -1384.49, 14.4922, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(850, 1878.31, -1363.24, 14.2074, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(851, 1954.34, -1372.53, 19.2216, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(852, 1244.03, -713.674, 99.0582, 0, 0, 0, NULL, 'vine-gegen-maddog ', 'ostern'),
(853, 1927.08, -1434.46, 16.367, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(854, 1916.41, -1434.75, 16.367, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(855, 1905.6, -1434.94, 16.367, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(856, 1909.47, -1418.41, 16.3594, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(857, 1916.82, -1418.24, 16.3594, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(858, 1926.97, -1417.54, 16.3594, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(859, 1950.77, -1424.64, 9.91886, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(860, 1883.58, -1425.8, 9.92378, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(861, 1909.66, -1386.1, 9.91639, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(862, 914.872, -798.797, 113.896, 0, 0, 0, NULL, 'vine-hügel ', 'ostern'),
(863, 2043.2, -1431.21, 16.7305, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(864, 2043.32, -1409.03, 16.7282, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(865, 2037.87, -1402.24, 16.8786, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(866, 2021.79, -1401.92, 16.7395, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(867, 2007.4, -1354.21, 23.558, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(868, 2018.23, -1355.51, 23.5465, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(869, 2021.59, -1362.62, 23.5614, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(870, 2037.51, -1363.39, 23.5566, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(871, 2053.82, -1397.59, 23.3803, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(872, 2065.34, -1394.25, 23.506, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(873, 2073.38, -1396.06, 23.5553, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(874, 784.119, -840.469, 62.4355, 0, 0, 0, NULL, 'vine-haus ', 'ostern'),
(875, 2098.48, -1405.18, 23.5638, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(876, 2099.22, -1416.07, 23.5628, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(877, 2090.32, -1430.77, 23.5326, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(878, 2089.99, -1414.43, 23.529, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(879, 2010.92, -1430.52, 13.6791, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(880, 2016.18, -1424.82, 14.0171, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(881, 2022.18, -1433.02, 13.6977, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(882, 704.371, -965.692, 57.0481, 0, 0, 0, NULL, 'vine-frei ', 'ostern'),
(883, 2017.43, -1436.95, 13.6002, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(884, 1993.55, -1310.41, 25.2249, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(885, 2001.79, -1310.36, 25.2221, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(886, 2008.84, -1328.47, 24.0402, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(887, 1973.7, -1308.36, 20.398, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(888, 1973.24, -1304.57, 20.3656, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(889, 2116.62, -1371.99, 25.5391, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(890, 246.713, -1159.67, 78.6304, 0, 0, 0, NULL, 'vine-haus ', 'ostern'),
(891, 2127.86, -1348.93, 25.5391, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(892, 2147.19, -1352.67, 25.5391, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(893, 378.328, -1243.88, 52.9999, 0, 0, 0, NULL, 'vine-neben-straße ', 'ostern'),
(894, 2141.67, -1396.7, 25.5467, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(895, 2146.51, -1436.05, 25.5391, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(896, 2143.8, -1445.23, 25.5391, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(897, 2144.13, -1462.61, 25.5391, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(898, 290.139, -1361.4, 52.6837, 0, 0, 0, NULL, 'vine-villa ', 'ostern'),
(899, 2158.56, -1489.39, 26.6538, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(900, 2148.69, -1489.29, 26.6225, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(901, 2142.02, -1491.99, 25.5391, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(902, 2194.92, -1484.96, 25.5391, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(903, 183.038, -1249.56, 77.9057, 0, 0, 0, NULL, 'vine-vila ', 'ostern'),
(904, 2193.2, -1424.4, 25.5391, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(905, 2200.47, -1396.55, 25.5391, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(906, 2237.01, -1402.41, 23.5725, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(907, 2250.28, -1403.39, 23.5623, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(908, 2255.94, -1463.96, 23.6124, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(909, 389.409, -1146.81, 77.6851, 0, 0, 0, NULL, 'vine-frei ', 'ostern'),
(910, 2239.38, -1464.16, 23.6398, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(911, 2234.49, -1363.97, 24.0933, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(912, 374.426, -1191.24, 65.0587, 0, 0, 0, NULL, 'vine-hügel ', 'ostern'),
(913, 2252.77, -1364.48, 24.0896, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(914, 2253.28, -1328.76, 24.0958, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(915, 2234.7, -1328.54, 24.1053, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(916, 2213.95, -1320.58, 23.6719, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(917, 2208.93, -1344.81, 23.5462, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(918, 2278.71, -1354.53, 28.7111, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(919, 2287.48, -1353.7, 30.1352, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(920, 2295.62, -1353.87, 28.7189, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(921, 806.634, -817.551, 70.9108, 0, 0, 0, NULL, 'vine-busch ', 'ostern'),
(922, 974.469, -766.337, 111.631, 0, 0, 0, NULL, 'vine-haus ', 'ostern'),
(923, 2124.08, -1159.66, 24.1626, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(924, 2115.23, -1160.21, 24.5738, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(925, 2138.08, -1154.73, 23.9922, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(926, 2164.08, -1088.93, 25.0577, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(927, 2151.8, -1084.24, 24.4179, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(928, 1199.39, -634.13, 103.572, 0, 0, 0, NULL, 'vine-maffiabrücke ', 'ostern'),
(929, 2126.77, -1064.65, 27.5514, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(930, 2139.24, -1072.3, 27.2591, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(931, 2157.55, -1070.47, 39.61, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(932, 1032.4, -634.362, 119.775, 0, 0, 0, NULL, 'vine-villa ', 'ostern'),
(933, 2154.63, -1079.75, 35.5919, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(934, 2144.37, -1081.15, 34.4489, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(935, 2076.62, -1068.62, 27.3522, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(936, 903.853, -673.122, 112.977, 0, 0, 0, NULL, 'vine-haus ', 'ostern'),
(937, 2077.68, -1033.45, 33.0051, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(938, 2083.66, -1024.34, 33.121, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(939, 869.719, -715.469, 105.242, 0, 0, 0, NULL, 'vine-haus ', 'ostern'),
(940, 2110.6, -1044.5, 27.7941, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(941, 2122.83, -1054.69, 25.439, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(942, 1956.7, -1004.64, 33.3343, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(943, 1967.18, -1002.41, 32.4619, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(944, 1993.94, -994.247, 30.6128, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(945, 1983.74, -997.676, 31.2053, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(946, 839.423, -742.368, 89.2613, 0, 0, 0, NULL, 'vine-haus ', 'ostern'),
(947, 1743.52, -973.426, 38.6571, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(948, 1731.54, -956.881, 41.9818, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(949, 1712.65, -957.396, 41.5928, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(950, 837.928, -827.498, 83.9585, 0, 0, 0, NULL, 'vine-haus ', 'ostern'),
(951, 1694.31, -963.588, 39.8926, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(952, 1677.63, -957.055, 41.2561, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(953, 1681.37, -934.638, 46.0243, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(954, 1689.7, -913.166, 50.2625, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(955, 1688.6, -894.696, 53.5581, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(956, 1676.2, -893.09, 53.6643, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(957, 1661.46, -890.935, 53.726, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(958, 552.687, -934.074, 82.1998, 0, 0, 0, NULL, 'vine-haus ', 'ostern'),
(959, 1654.52, -855.177, 57.0636, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(960, 1536.19, -884.158, 54.9786, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(961, 1534.95, -891.104, 53.4164, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(962, 1531.21, -894.061, 53.5401, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(963, 1497.47, -900.178, 54.4633, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(964, 563.153, -1100.02, 69.3041, 0, 0, 0, NULL, 'vine-haus ', 'ostern'),
(965, 1470.54, -905.52, 54.4012, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(966, 1429.06, -892.077, 50.2024, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(967, 498.569, -1094.73, 78.3448, 0, 0, 0, NULL, 'vine-haus ', 'ostern'),
(968, 1434.04, -968.947, 36.959, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(969, 1419.59, -966.596, 37.0314, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(970, 1449.98, -918.65, 36.9677, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(971, 1450.7, -915.915, 37.6068, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(972, 1439.55, -914.425, 37.0389, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(973, 1415.09, -910.04, 35.9072, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(974, 1404.46, -908.491, 36.2947, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(975, 189.301, -1400.25, 49.3825, 0, 0, 0, NULL, 'vine-haus ', 'ostern'),
(976, 1092.71, -805.585, 106.988, 0, 0, 0, NULL, 'vine-villa ', 'ostern'),
(977, 1090.26, -776.655, 108.339, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(978, 1096.51, -776.608, 107.395, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(979, 1104.75, -775.235, 106.039, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(980, 1114.58, -774.847, 103.421, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(981, 1122.5, -773.393, 101.222, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(982, 1098.67, -824.045, 86.518, 0, 0, 0, NULL, 'vine-villa ', 'ostern'),
(983, 1092.36, -795.61, 104.34, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(984, 1077.51, -732.211, 106.002, 0, 0, 0, NULL, 'vine-haus ', 'ostern'),
(985, 1128.95, -730.871, 97.2858, 0, 0, 0, NULL, 'vine-haus ', 'ostern'),
(986, 1144.84, -650.859, 102.35, 0, 0, 0, NULL, 'vine-baum ', 'ostern'),
(987, 1100.23, -662.475, 113.205, 0, 0, 0, NULL, 'vine-pool ', 'ostern'),
(988, 1091.69, -662.674, 113.216, 0, 0, 0, NULL, 'vine-pool ', 'ostern'),
(989, 1082.18, -647.01, 113.191, 0, 0, 0, NULL, 'vine-villa ', 'ostern'),
(990, 1653.04, -49.0945, 36.5125, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(991, 1655.08, -54.6424, 36.6153, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(992, 1655.09, -59.915, 36.2703, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(993, 1658.55, -58.5342, 36.2491, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(994, 1042.54, -663.051, 119.668, 0, 0, 0, NULL, 'vine-villa ', 'ostern'),
(995, 1656.44, -57.9141, 36.2777, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(996, 1649.64, -41.1318, 36.4997, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(997, 1047.81, -713.627, 119.81, 0, 0, 0, NULL, 'vine-mast ', 'ostern'),
(998, 1018.64, -762.665, 112.123, 0, 0, 0, NULL, 'vine-haus ', 'ostern'),
(999, 1638.06, 107.581, 37.2476, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(1000, 950.729, -749.882, 113.342, 0, 0, 0, NULL, 'vine-baum ', 'ostern'),
(1001, 1630.18, 67.6348, 37, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(1002, -37.5342, -91.7666, 1003.55, 18, 23, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(1003, -37.3018, -74.6416, 1003.55, 18, 23, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(1004, -32.7529, -79.0869, 1003.55, 18, 23, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(1005, -28.2178, -80.374, 1003.55, 18, 23, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(1006, -24.6113, -79.8584, 1003.55, 18, 23, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(1007, -20.4951, -80.1318, 1003.55, 18, 23, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(1008, -15.9404, -80.3828, 1003.55, 18, 23, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(1009, -14.8096, -91.6973, 1003.55, 18, 23, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(1010, -27.1123, -91.7764, 1003.55, 18, 23, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(1011, 998.165, -777.026, 104.385, 0, 0, 0, NULL, 'vine-haus ', 'ostern'),
(1012, 989.006, -784.237, 103.727, 0, 0, 0, NULL, 'vine-haus ', 'ostern'),
(1013, 958.721, -779.829, 106.711, 0, 0, 0, NULL, 'vine-haus ', 'ostern'),
(1014, 918.434, -819.201, 97.3176, 0, 0, 0, NULL, 'vine-haus ', 'ostern'),
(1015, 1630.88, 55.584, 36.9124, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(1016, 1632.72, 49.5928, 36.8658, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(1017, 932.386, -852.688, 93.0729, 0, 0, 0, NULL, 'vine-haus ', 'ostern'),
(1018, 1646.36, 52.0684, 36.8932, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(1019, 949.654, -850.083, 93.0702, 0, 0, 0, NULL, 'vine-haus ', 'ostern'),
(1020, 1637.91, 69.8461, 42.715, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(1021, 967.49, -845.89, 95.1018, 0, 0, 0, NULL, 'vine-haus ', 'ostern'),
(1022, 1637.81, 79.6, 42.7657, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(1023, 1632.51, 73.0082, 39.9838, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(1024, 937.296, -809.245, 104.162, 0, 0, 0, NULL, 'vine-villa ', 'ostern'),
(1025, 1627.73, 76.0752, 37.0778, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(1026, 863.404, -844.953, 76.9198, 0, 0, 0, NULL, 'vine-haus ', 'ostern'),
(1027, 1660.97, 296.982, 29.9894, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(1028, 866.043, -831.811, 85.5849, 0, 0, 0, NULL, 'vine-haus ', 'ostern'),
(1029, 851.828, -831.119, 89.0716, 0, 0, 0, NULL, 'vine-haus ', 'ostern'),
(1030, 1733.48, 507.544, 28.4587, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(1031, 1749.78, 554.648, 25.5704, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(1032, 812.646, -762.871, 76.1079, 0, 0, 0, NULL, 'vine-haus ', 'ostern'),
(1033, 807.52, -753.438, 76.1085, 0, 0, 0, NULL, 'vine-haus ', 'ostern'),
(1034, 1777.75, 654.552, 17.9161, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(1035, 1788.14, 706.296, 14.5467, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(1036, 801.688, -829.716, 69.3314, 0, 0, 0, NULL, 'vine-haus ', 'ostern'),
(1037, 1812.65, 724.976, 10.3818, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(1038, 1809.19, 703.148, 10.3823, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(1039, 1802.86, 668.038, 10.3835, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(1040, 1794.92, 630.513, 10.385, 0, 0, 0, NULL, 'LS - Freie Wildbahn', 'ostern'),
(1041, 564.344, -1074.9, 72.4834, 0, 0, 0, NULL, 'vine-haus ', 'ostern'),
(1042, 574.234, -1093.4, 69.6084, 0, 0, 0, NULL, 'vine-haus ', 'ostern'),
(1043, 1778, 620.832, 10.3816, 0, 0, 0, NULL, '', 'ostern'),
(1044, 1772.13, 622.188, 10.3932, 0, 0, 0, NULL, '', 'ostern'),
(1045, 1761.06, 625.375, 10.3936, 0, 0, 0, NULL, '', 'ostern'),
(1046, 1752.03, 597.074, 10.3835, 0, 0, 0, NULL, '', 'ostern'),
(1047, 1760.27, 592.096, 10.3787, 0, 0, 0, NULL, '', 'ostern'),
(1048, 1770.59, 590.38, 10.3837, 0, 0, 0, NULL, '', 'ostern'),
(1049, 1774.99, 597.221, 10.3941, 0, 0, 0, NULL, '', 'ostern'),
(1050, 1769.05, 602.166, 10.3838, 0, 0, 0, NULL, '', 'ostern'),
(1051, 1758.81, 604.287, 10.3859, 0, 0, 0, NULL, '', 'ostern'),
(1052, 1750.72, 637.082, 10.386, 0, 0, 0, NULL, '', 'ostern'),
(1053, 1755.16, 647.216, 10.391, 0, 0, 0, NULL, '', 'ostern'),
(1054, 1758.56, 664.651, 10.3911, 0, 0, 0, NULL, '', 'ostern'),
(1055, 1760.8, 674.834, 10.3935, 0, 0, 0, NULL, '', 'ostern'),
(1056, 1765.46, 699.554, 10.3885, 0, 0, 0, NULL, '', 'ostern'),
(1057, 1768.78, 718.453, 10.3897, 0, 0, 0, NULL, '', 'ostern'),
(1058, 1771.45, 738.87, 10.3919, 0, 0, 0, NULL, '', 'ostern'),
(1059, 1773.1, 758.327, 10.3931, 0, 0, 0, NULL, '', 'ostern'),
(1060, 1774.63, 776.726, 10.3949, 0, 0, 0, NULL, '', 'ostern'),
(1061, 1775.83, 795.793, 10.3925, 0, 0, 0, NULL, '', 'ostern'),
(1062, 475.598, -1093.28, 81.9267, 0, 0, 0, NULL, 'vine-haus ', 'ostern'),
(1063, 1723.18, 804.577, 10.2008, 0, 0, 0, NULL, '', 'ostern'),
(1064, 1717.17, 804.277, 10.2063, 0, 0, 0, NULL, '', 'ostern'),
(1065, 1710.27, 804.475, 10.164, 0, 0, 0, NULL, '', 'ostern'),
(1066, 1703.99, 803.767, 10.2768, 0, 0, 0, NULL, '', 'ostern'),
(1067, 1693.16, 803.998, 10.1968, 0, 0, 0, NULL, '', 'ostern'),
(1068, 420.203, -1134.15, 74.0794, 0, 0, 0, NULL, 'vine-haus ', 'ostern'),
(1069, 1686.16, 803.717, 10.2855, 0, 0, 0, NULL, '', 'ostern'),
(1070, 435.508, -1140.5, 73.1036, 0, 0, 0, NULL, 'vine-haus ', 'ostern'),
(1071, 1578, 804.33, 10.134, 0, 0, 0, NULL, '', 'ostern'),
(1072, 1578.5, 807.104, 9.58871, 0, 0, 0, NULL, '', 'ostern'),
(1073, 1572.82, 815.765, 8.59477, 0, 0, 0, NULL, '', 'ostern'),
(1074, 1563.63, 815.313, 8.71614, 0, 0, 0, NULL, '', 'ostern'),
(1075, 484.995, -1162.62, 66.5987, 0, 0, 0, NULL, 'vine-haus ', 'ostern'),
(1076, 1555.6, 810.89, 9.01941, 0, 0, 0, NULL, '', 'ostern'),
(1077, 1555.81, 806.314, 9.71963, 0, 0, 0, NULL, '', 'ostern'),
(1078, 1552.7, 799.803, 10.309, 0, 0, 0, NULL, '', 'ostern'),
(1079, 466.797, -1162.84, 66.9213, 0, 0, 0, NULL, 'vine-haus ', 'ostern'),
(1080, 1529.68, 800.752, 10.358, 0, 0, 0, NULL, '', 'ostern'),
(1081, 1496.75, 798.389, 10.3912, 0, 0, 0, NULL, '', 'ostern'),
(1082, 1466.85, 798.796, 10.3899, 0, 0, 0, NULL, '', 'ostern'),
(1083, 1445.47, 798.806, 10.3886, 0, 0, 0, NULL, '', 'ostern'),
(1084, 1414.46, 798.817, 10.3843, 0, 0, 0, NULL, '', 'ostern'),
(1085, 468.873, -1147.17, 67.945, 0, 0, 0, NULL, 'vine-haus ', 'ostern'),
(1086, 494.818, -1144.59, 68.7816, 0, 0, 0, NULL, 'vine-haus ', 'ostern'),
(1087, 1358.37, 795.375, 10.3819, 0, 0, 0, NULL, '', 'ostern'),
(1088, 561.041, -1157.82, 53.9902, 0, 0, 0, NULL, 'vine-haus ', 'ostern'),
(1089, 1394.62, 796.629, 10.3934, 0, 0, 0, NULL, '', 'ostern'),
(1090, 1396.04, 790.476, 10.3638, 0, 0, 0, NULL, '', 'ostern'),
(1091, 1394.48, 773.493, 10.3892, 0, 0, 0, NULL, '', 'ostern'),
(1092, 1396.91, 748.587, 10.3916, 0, 0, 0, NULL, '', 'ostern'),
(1093, 1396.43, 718.764, 10.3901, 0, 0, 0, NULL, '', 'ostern'),
(1094, 629.251, -1094.26, 49.061, 0, 0, 0, NULL, 'vine-haus ', 'ostern'),
(1095, 1396.73, 688.184, 10.3846, 0, 0, 0, NULL, '', 'ostern'),
(1096, 618.321, -1080.64, 58.4263, 0, 0, 0, NULL, 'vine-haus ', 'ostern'),
(1097, 607.816, -1087.95, 58.3911, 0, 0, 0, NULL, 'vine-haus ', 'ostern'),
(1098, 566.946, -1112.07, 62.3804, 0, 0, 0, NULL, 'vine-haus ', 'ostern'),
(1099, 557.769, -1117.06, 62.3823, 0, 0, 0, NULL, 'vine-haus ', 'ostern'),
(1100, 571.327, -1128.85, 50.2587, 0, 0, 0, NULL, 'vine-haus ', 'ostern'),
(1101, 356.038, -1191.95, 71.8465, 0, 0, 0, NULL, 'vine-haus ', 'ostern'),
(1102, 347.869, -1198.7, 71.8467, 0, 0, 0, NULL, 'vine-haus ', 'ostern'),
(1103, 353.67, -1212.71, 63.0123, 0, 0, 0, NULL, 'vine-haus ', 'ostern'),
(1104, 364.93, -1208.53, 58.2401, 0, 0, 0, NULL, 'vine-haus ', 'ostern'),
(1105, 319.707, -1229.36, 69.5444, 0, 0, 0, NULL, 'vine-haus ', 'ostern'),
(1106, 258.676, -1290.57, 74.2035, 0, 0, 0, NULL, 'vine-haus ', 'ostern'),
(1107, 259.196, -1374.22, 52.6771, 0, 0, 0, NULL, 'vine-haus ', 'ostern'),
(1108, 256.049, -1385.92, 52.6793, 0, 0, 0, NULL, 'vine-haus ', 'ostern'),
(1109, 248.397, -1379.64, 52.678, 0, 0, 0, NULL, 'vine-haus ', 'ostern'),
(1110, 239.768, -1368.06, 52.6761, 0, 0, 0, NULL, 'vine-haus ', 'ostern'),
(1111, 242.039, -1279.79, 73.5179, 0, 0, 0, NULL, 'vine-haus ', 'ostern'),
(1112, 1395.81, 664.562, 10.4016, 0, 0, 0, NULL, '', 'ostern'),
(1113, 265.106, -1288.3, 74.1989, 0, 0, 0, NULL, 'vine-villa ', 'ostern'),
(1114, 275.546, -1278.62, 74.2012, 0, 0, 0, NULL, 'vine-villa ', 'ostern'),
(1115, 268.428, -1262.69, 73.5116, 0, 0, 0, NULL, 'vine-villa ', 'ostern'),
(1116, 1436, 676.023, 10.3901, 0, 0, 0, NULL, '', 'ostern'),
(1117, 1434.87, 671.313, 10.3836, 0, 0, 0, NULL, '', 'ostern'),
(1118, 1399.73, 664.722, 10.5859, 0, 0, 0, NULL, '', 'ostern'),
(1119, 305.892, -1333.75, 54.3477, 0, 0, 0, NULL, 'vine-villa ', 'ostern'),
(1120, 1398.82, 795.595, 10.5905, 0, 0, 0, NULL, '', 'ostern'),
(1121, 1417.95, 795.156, 10.5855, 0, 0, 0, NULL, '', 'ostern'),
(1122, 291.652, -1342.61, 53.0087, 0, 0, 0, NULL, 'vine-villa ', 'ostern'),
(1123, 296.288, -1352.19, 53.0084, 0, 0, 0, NULL, 'vine-villa ', 'ostern'),
(1124, 1493.45, 789.31, 10.577, 0, 0, 0, NULL, '', 'ostern'),
(1125, 307.013, -1346.45, 53.004, 0, 0, 0, NULL, 'vine-villa ', 'ostern'),
(1126, 312.094, -1342.99, 53.0062, 0, 0, 0, NULL, 'vine-villa ', 'ostern'),
(1127, 1555.58, 796.165, 10.5865, 0, 0, 0, NULL, '', 'ostern'),
(1128, 1529.67, 765.302, 10.586, 0, 0, 0, NULL, '', 'ostern'),
(1129, 1556.19, 665.447, 10.5875, 0, 0, 0, NULL, '', 'ostern'),
(1130, 1499.35, 664.673, 10.4023, 0, 0, 0, NULL, '', 'ostern'),
(1131, 1489.24, 664.922, 10.4504, 0, 0, 0, NULL, '', 'ostern'),
(1132, 1472.45, 664.269, 10.3822, 0, 0, 0, NULL, '', 'ostern'),
(1133, 243.165, -1225.55, 74.8769, 0, 0, 0, NULL, 'vine-villa ', 'ostern'),
(1134, 1458.92, 740.256, 10.5856, 0, 0, 0, NULL, '', 'ostern'),
(1135, 231.729, -1220.15, 74.8751, 0, 0, 0, NULL, 'vine-villa ', 'ostern'),
(1136, 235.314, -1208.03, 75.7011, 0, 0, 0, NULL, 'vine-villa ', 'ostern'),
(1137, 1458.48, 761.639, 10.594, 0, 0, 0, NULL, '', 'ostern'),
(1138, 245.178, -1200.72, 75.7067, 0, 0, 0, NULL, 'vine-villa ', 'ostern'),
(1139, 261.089, -1206.04, 74.8707, 0, 0, 0, NULL, 'vine-villa ', 'ostern'),
(1140, 269.916, -1223.44, 74.2442, 0, 0, 0, NULL, 'vine-villa ', 'ostern'),
(1141, 1584.69, 616.335, 7.36856, 0, 0, 0, NULL, '', 'ostern'),
(1142, 1584.33, 600.114, 7.3908, 0, 0, 0, NULL, '', 'ostern'),
(1143, 1620.58, 599.53, 7.39728, 0, 0, 0, NULL, '', 'ostern'),
(1144, 352.745, -1197.29, 76.0883, 0, 0, 0, NULL, 'vine-villa ', 'ostern'),
(1145, 1625.06, 604.478, 7.34605, 0, 0, 0, NULL, '', 'ostern'),
(1146, 347.885, -1201.73, 76.0855, 0, 0, 0, NULL, 'vine-villa ', 'ostern'),
(1147, 1631.03, 605.041, 7.35292, 0, 0, 0, NULL, '', 'ostern'),
(1148, 1635.35, 600.224, 7.39719, 0, 0, 0, NULL, '', 'ostern'),
(1149, 1657.6, 599.631, 7.4632, 0, 0, 0, NULL, '', 'ostern'),
(1150, 422.357, -1158.34, 76.26, 0, 0, 0, NULL, 'vine-haus ', 'ostern'),
(1151, 409.386, -1156.06, 76.2518, 0, 0, 0, NULL, 'vine-haus ', 'ostern'),
(1152, 415.224, -1145.81, 76.2407, 0, 0, 0, NULL, 'vine-haus ', 'ostern'),
(1153, 1657.93, 615.897, 7.38319, 0, 0, 0, NULL, '', 'ostern'),
(1154, 1627.34, 600.815, 1.32358, 0, 0, 0, NULL, '', 'ostern'),
(1155, 1629.05, 600.894, 1.33254, 0, 0, 0, NULL, '', 'ostern'),
(1156, 1627.17, 566.627, 1.62219, 0, 0, 0, NULL, '', 'ostern'),
(1157, 1634.07, 566.841, 1.74714, 0, 0, 0, NULL, '', 'ostern'),
(1158, 646.015, -1117.29, 43.775, 0, 0, 0, NULL, 'vine-villa ', 'ostern'),
(1159, 638.317, -1125.34, 43.7724, 0, 0, 0, NULL, 'vine-villa ', 'ostern'),
(1160, 646.285, -1058.86, 52.1507, 0, 0, 0, NULL, 'vine-haus ', 'ostern'),
(1161, 687.031, -1022.33, 51.1374, 0, 0, 0, NULL, 'vine-haus ', 'ostern'),
(1162, 1578.59, 676.248, 10.3837, 0, 0, 0, NULL, '', 'ostern'),
(1163, 1578.43, 664.114, 10.3893, 0, 0, 0, NULL, '', 'ostern'),
(1164, 1583.1, 664.113, 10.3962, 0, 0, 0, NULL, '', 'ostern'),
(1165, 725.971, -1011.69, 52.3025, 0, 0, 0, NULL, 'vine-villa ', 'ostern'),
(1166, 1586.68, 664.188, 10.387, 0, 0, 0, NULL, '', 'ostern'),
(1167, 744.149, -1003.37, 52.298, 0, 0, 0, NULL, 'vine-villa ', 'ostern'),
(1168, 1636.86, 664.226, 10.3954, 0, 0, 0, NULL, '', 'ostern'),
(1169, 736.049, -1011.43, 52.3302, 0, 0, 0, NULL, 'vine-villa ', 'ostern'),
(1170, 1689.43, 663.659, 10.3796, 0, 0, 0, NULL, '', 'ostern'),
(1171, 1701.14, 664.552, 10.3945, 0, 0, 0, NULL, '', 'ostern'),
(1172, 1756.34, 663.92, 10.3795, 0, 0, 0, NULL, '', 'ostern'),
(1173, 693.9, -1083.32, 45.4199, 0, 0, 0, NULL, 'vine-villa ', 'ostern'),
(1174, 1756.41, 683.615, 10.3887, 0, 0, 0, NULL, '', 'ostern'),
(1175, 1756.53, 686.81, 10.3972, 0, 0, 0, NULL, '', 'ostern'),
(1176, 659.854, -1131.74, 37.3222, 0, 0, 0, NULL, 'vine-haus ', 'ostern'),
(1177, 645.584, -1132.36, 38.2657, 0, 0, 0, NULL, 'vine-haus ', 'ostern'),
(1178, 1756.48, 749.499, 10.4163, 0, 0, 0, NULL, '', 'ostern'),
(1179, 1756.34, 774.189, 10.3797, 0, 0, 0, NULL, '', 'ostern'),
(1180, 1679.03, 769.915, 10.3795, 0, 0, 0, NULL, '', 'ostern'),
(1181, 1652.79, 774.728, 10.3929, 0, 0, 0, NULL, '', 'ostern'),
(1182, 1649.58, 774.648, 10.4922, 0, 0, 0, NULL, '', 'ostern'),
(1183, 1578.85, 769.916, 10.3863, 0, 0, 0, NULL, '', 'ostern'),
(1184, 1578.43, 782.174, 10.3824, 0, 0, 0, NULL, '', 'ostern'),
(1185, 606.91, -1202.44, 30.6189, 0, 0, 0, NULL, 'ls-tunel-grenze ', 'ostern'),
(1186, 614.817, -1199.73, 30.6296, 0, 0, 0, NULL, 'ls-tunnel-grenze ', 'ostern'),
(1187, 1495.93, 975.141, 10.3826, 0, 0, 0, NULL, '', 'ostern'),
(1188, 624.167, -1196.34, 30.6006, 0, 0, 0, NULL, 'ls-tunnel-grenze ', 'ostern'),
(1189, 1496.57, 965.922, 10.3923, 0, 0, 0, NULL, '', 'ostern'),
(1190, 1496.43, 955.416, 10.3911, 0, 0, 0, NULL, '', 'ostern'),
(1191, 1496.5, 945.307, 10.3835, 0, 0, 0, NULL, '', 'ostern'),
(1192, 1496.42, 935.313, 10.3829, 0, 0, 0, NULL, '', 'ostern'),
(1193, 633.922, -1191.68, 30.6148, 0, 0, 0, NULL, 'ls-tunnel-grenze ', 'ostern'),
(1194, 1496.45, 925.33, 10.387, 0, 0, 0, NULL, '', 'ostern'),
(1195, 1496.51, 904.475, 10.4926, 0, 0, 0, NULL, '', 'ostern'),
(1196, 641.925, -1187.7, 30.5941, 0, 0, 0, NULL, 'ls-tunnel-grenze ', 'ostern'),
(1197, 1476.4, 934.113, 10.4483, 0, 0, 0, NULL, '', 'ostern'),
(1198, 1461.98, 935.555, 9.42522, 0, 0, 0, NULL, '', 'ostern'),
(1199, 1452.66, 935.507, 9.41372, 0, 0, 0, NULL, '', 'ostern'),
(1200, 1424.97, 935.415, 9.43759, 0, 0, 0, NULL, '', 'ostern'),
(1201, 1392.73, 935.479, 10.3911, 0, 0, 0, NULL, '', 'ostern'),
(1202, 1392.68, 943.345, 10.3852, 0, 0, 0, NULL, '', 'ostern'),
(1203, 1378.52, 978.09, 10.3799, 0, 0, 0, NULL, '', 'ostern'),
(1204, 1379.08, 983.289, 10.3804, 0, 0, 0, NULL, '', 'ostern'),
(1205, 725.827, -999.25, 52.2995, 0, 0, 0, NULL, 'vine-haus ', 'ostern'),
(1206, 1378.7, 993.593, 10.3827, 0, 0, 0, NULL, '', 'ostern'),
(1207, 717.889, -1011.64, 52.3019, 0, 0, 0, NULL, 'vine-haus ', 'ostern'),
(1208, 1379.75, 1000.44, 10.3773, 0, 0, 0, NULL, '', 'ostern'),
(1209, 699.467, -1061.14, 49.4217, 0, 0, 0, NULL, 'vine-haus ', 'ostern'),
(1210, 1424.63, 969.779, 9.44045, 0, 0, 0, NULL, '', 'ostern'),
(1211, 700.656, -1058.1, 45.7406, 0, 0, 0, NULL, 'vine-haus ', 'ostern'),
(1212, 705.002, -1056.74, 46.6737, 0, 0, 0, NULL, 'vine-haus ', 'ostern'),
(1213, 711.478, -1066.76, 46.6737, 0, 0, 0, NULL, 'vine-haus ', 'ostern'),
(1214, 1452.57, 969.624, 9.42389, 0, 0, 0, NULL, '', 'ostern'),
(1215, 711.717, -1079.58, 49.4219, 0, 0, 0, NULL, 'vine-haus ', 'ostern'),
(1216, 707.812, -1086.31, 49.4219, 0, 0, 0, NULL, 'vine-haus ', 'ostern'),
(1217, 701.402, -1087.52, 49.4219, 0, 0, 0, NULL, 'vine-haus ', 'ostern'),
(1218, 1461.25, 970.041, 9.46675, 0, 0, 0, NULL, '', 'ostern'),
(1219, 698.607, -1091.77, 49.4219, 0, 0, 0, NULL, 'vine-haus ', 'ostern'),
(1220, 709.442, -1092.13, 49.4149, 0, 0, 0, NULL, 'vine-haus ', 'ostern'),
(1221, 718.943, -1078.51, 49.4219, 0, 0, 0, NULL, 'vine-haus ', 'ostern'),
(1222, 1495.97, 1011.09, 10.3788, 0, 0, 0, NULL, '', 'ostern'),
(1223, 716.825, -1052.38, 45.8863, 0, 0, 0, NULL, 'vine-haus ', 'ostern'),
(1224, 1496.1, 1021.24, 10.385, 0, 0, 0, NULL, '', 'ostern'),
(1225, 1496.28, 1031.34, 10.3802, 0, 0, 0, NULL, '', 'ostern'),
(1226, 1496.42, 1041.35, 10.3852, 0, 0, 0, NULL, '', 'ostern'),
(1227, 1496.46, 1051.34, 10.3819, 0, 0, 0, NULL, '', 'ostern'),
(1228, 1496.53, 1061.36, 10.3853, 0, 0, 0, NULL, '', 'ostern'),
(1229, 1496.55, 1071.31, 10.3848, 0, 0, 0, NULL, '', 'ostern'),
(1230, 1496.52, 1081.35, 10.3848, 0, 0, 0, NULL, '', 'ostern'),
(1231, 648.71, -1067.25, 49.5353, 0, 0, 0, NULL, 'vine-haus ', 'ostern'),
(1232, 1486, 1091.21, 10.3934, 0, 0, 0, NULL, '', 'ostern'),
(1233, 1486.02, 1107.74, 10.3817, 0, 0, 0, NULL, '', 'ostern'),
(1234, 1486.61, 1121.67, 10.3837, 0, 0, 0, NULL, '', 'ostern'),
(1235, 1431.96, 1098.72, 10.3782, 0, 0, 0, NULL, '', 'ostern'),
(1236, 1430.38, 1088.74, 10.3808, 0, 0, 0, NULL, '', 'ostern'),
(1237, 1430.35, 1067.02, 9.41397, 0, 0, 0, NULL, '', 'ostern'),
(1238, 320.362, -1176.88, 78.8387, 0, 0, 0, NULL, 'vine-villa ', 'ostern'),
(1239, 310.424, -1185.45, 78.7606, 0, 0, 0, NULL, 'vine-villa ', 'ostern'),
(1240, 1430.29, 1039.02, 9.43301, 0, 0, 0, NULL, '', 'ostern'),
(1241, 310.812, -1193.34, 80.4817, 0, 0, 0, NULL, 'vine-villa ', 'ostern'),
(1242, 296.463, -1205.79, 80.4495, 0, 0, 0, NULL, 'vine-villa ', 'ostern'),
(1243, 288.987, -1210.56, 80.4883, 0, 0, 0, NULL, 'vine-villa ', 'ostern'),
(1244, 1430.38, 1029.89, 9.42159, 0, 0, 0, NULL, '', 'ostern'),
(1245, 252.669, -1176.58, 79.6775, 0, 0, 0, NULL, 'vine-villa ', 'ostern'),
(1246, 1370.94, 1016.37, 10.3898, 0, 0, 0, NULL, '', 'ostern'),
(1247, 1374.64, 1027.58, 10.3843, 0, 0, 0, NULL, '', 'ostern'),
(1248, 264.718, -1148.4, 80.0541, 0, 0, 0, NULL, 'vine-villa ', 'ostern'),
(1249, 281.99, -1135.86, 80.4797, 0, 0, 0, NULL, 'vine-villa ', 'ostern'),
(1250, 1374.46, 1031.46, 10.388, 0, 0, 0, NULL, '', 'ostern'),
(1251, 290.006, -1122.47, 80.4927, 0, 0, 0, NULL, 'vine-villa ', 'ostern'),
(1252, 311.448, -1114.49, 80.4467, 0, 0, 0, NULL, 'vine-villa ', 'ostern'),
(1253, 1374.01, 1046.03, 10.3829, 0, 0, 0, NULL, '', 'ostern'),
(1254, 318.367, -1144.16, 81.1588, 0, 0, 0, NULL, 'vine-villa ', 'ostern'),
(1255, 1374.34, 1050.11, 10.5878, 0, 0, 0, NULL, '', 'ostern'),
(1256, 323.544, -1154.23, 80.8395, 0, 0, 0, NULL, 'vine-villa ', 'ostern'),
(1257, 317.969, -1171.35, 80.4801, 0, 0, 0, NULL, 'vine-villa ', 'ostern'),
(1258, 1370.79, 1061.63, 10.3896, 0, 0, 0, NULL, '', 'ostern'),
(1259, 331.999, -1175.92, 80.4796, 0, 0, 0, NULL, 'vine-villa ', 'ostern'),
(1260, 348.701, -1162.81, 80.4743, 0, 0, 0, NULL, 'vine-villa ', 'ostern'),
(1261, 1366.49, 1062.01, 10.3846, 0, 0, 0, NULL, '', 'ostern'),
(1262, 1357.8, 1046.53, 10.3939, 0, 0, 0, NULL, '', 'ostern'),
(1263, 1358.36, 1031.97, 10.3844, 0, 0, 0, NULL, '', 'ostern'),
(1264, 1348.57, 1014.4, 10.4081, 0, 0, 0, NULL, '', 'ostern'),
(1265, 1365.4, 1016.36, 10.3852, 0, 0, 0, NULL, '', 'ostern'),
(1266, 272.681, -1267.37, 73.5132, 0, 0, 0, NULL, 'vine-villa ', 'ostern'),
(1267, 1354.03, 1096.94, 10.3873, 0, 0, 0, NULL, '', 'ostern'),
(1268, 1348.46, 1086.84, 10.4184, 0, 0, 0, NULL, '', 'ostern'),
(1269, 1343.43, 1064.3, 10.3863, 0, 0, 0, NULL, '', 'ostern'),
(1270, 1331.66, 1086.4, 10.4144, 0, 0, 0, NULL, '', 'ostern'),
(1271, 1316.53, 1096.87, 10.3824, 0, 0, 0, NULL, '', 'ostern'),
(1272, 499.317, -1094.5, 81.927, 0, 0, 0, NULL, 'vine-villa ', 'ostern'),
(1273, 1303.11, 1100.82, 10.3857, 0, 0, 0, NULL, '', 'ostern'),
(1274, 552.949, -1077.33, 72.3682, 0, 0, 0, NULL, 'vine-haus ', 'ostern'),
(1275, 1303.1, 1104.36, 10.3879, 0, 0, 0, NULL, '', 'ostern'),
(1276, 1278.6, 1128.74, 10.1315, 0, 0, 0, NULL, '', 'ostern'),
(1277, 1278.78, 1136.83, 10.278, 0, 0, 0, NULL, '', 'ostern'),
(1278, 1278.42, 1149.29, 10.3952, 0, 0, 0, NULL, '', 'ostern'),
(1279, 1278.03, 1163.12, 10.3931, 0, 0, 0, NULL, '', 'ostern'),
(1280, 1277.8, 1182.33, 10.3951, 0, 0, 0, NULL, '', 'ostern'),
(1281, 1285.82, 1182.87, 10.3841, 0, 0, 0, NULL, '', 'ostern'),
(1282, 1294.61, 1182.95, 10.3822, 0, 0, 0, NULL, '', 'ostern'),
(1283, 1335.67, 1153.04, 10.3935, 0, 0, 0, NULL, '', 'ostern'),
(1284, 670.809, -1023.27, 55.7596, 0, 0, 0, NULL, 'vine-haus ', 'ostern');
INSERT INTO `ostereier` (`ID`, `X`, `Y`, `Z`, `Inte`, `Dim`, `State`, `gefundenVon`, `comment`, `event`) VALUES
(1285, 672.951, -1020.46, 55.7596, 0, 0, 0, NULL, 'vine-haus ', 'ostern'),
(1286, 1353.15, 1153.68, 10.3876, 0, 0, 0, NULL, '', 'ostern'),
(1287, 676.702, -1012.11, 55.7596, 0, 0, 0, NULL, 'vine-haus ', 'ostern'),
(1288, 683.988, -1013.42, 52.7833, 0, 0, 0, NULL, 'vine-haus ', 'ostern'),
(1289, 682.733, -1022.02, 51.7839, 0, 0, 0, NULL, 'vine-haus ', 'ostern'),
(1290, 677.817, -1029.16, 52.0608, 0, 0, 0, NULL, 'vine-haus ', 'ostern'),
(1291, 1436.06, 1182.88, 10.4874, 0, 0, 0, NULL, '', 'ostern'),
(1292, 1525.43, 1006.66, 10.3867, 0, 0, 0, NULL, '', 'ostern'),
(1293, 1525.48, 1002.46, 10.382, 0, 0, 0, NULL, '', 'ostern'),
(1294, 1525.34, 998.7, 10.4026, 0, 0, 0, NULL, '', 'ostern'),
(1295, 1525.32, 994.555, 10.4139, 0, 0, 0, NULL, '', 'ostern'),
(1296, 1525.52, 984.903, 10.4039, 0, 0, 0, NULL, '', 'ostern'),
(1297, 1528.4, 975.86, 10.3848, 0, 0, 0, NULL, '', 'ostern'),
(1298, 759.619, -949.144, 58.3672, 0, 0, 0, NULL, 'vine-schild ', 'ostern'),
(1299, 1532.09, 956.402, 10.3981, 0, 0, 0, NULL, '', 'ostern'),
(1300, 1531.59, 949.515, 10.3908, 0, 0, 0, NULL, '', 'ostern'),
(1301, 761.005, -947.749, 58.3404, 0, 0, 0, NULL, 'vine-schild ', 'ostern'),
(1302, 1532.15, 938.634, 10.3966, 0, 0, 0, NULL, '', 'ostern'),
(1303, 1531.11, 924.153, 10.8203, 0, 0, 0, NULL, '', 'ostern'),
(1304, 758.564, -950.977, 58.3039, 0, 0, 0, NULL, 'vine-schild ', 'ostern'),
(1305, 757.193, -952.514, 58.3118, 0, 0, 0, NULL, 'vine-schild ', 'ostern'),
(1306, 1548.15, 981.817, 10.3847, 0, 0, 0, NULL, '', 'ostern'),
(1307, 755.743, -953.923, 58.3403, 0, 0, 0, NULL, 'vine-schild ', 'ostern'),
(1308, 754.589, -955.475, 58.3262, 0, 0, 0, NULL, 'vine-schild ', 'ostern'),
(1309, 759.703, -961.233, 58.2989, 0, 0, 0, NULL, 'vine-schild ', 'ostern'),
(1310, 761.118, -960.036, 58.2404, 0, 0, 0, NULL, 'vine-schild ', 'ostern'),
(1311, 763.035, -959.018, 58.3183, 0, 0, 0, NULL, 'vine-schild ', 'ostern'),
(1312, 764.728, -957.675, 58.2721, 0, 0, 0, NULL, 'vine-schild ', 'ostern'),
(1313, 766.098, -956.033, 58.0995, 0, 0, 0, NULL, 'vine-schild ', 'ostern'),
(1314, 767.888, -955.364, 58.2429, 0, 0, 0, NULL, 'vine-schild ', 'ostern'),
(1315, 793.65, -912.641, 58.3379, 0, 0, 0, NULL, 'vine-schild ', 'ostern'),
(1316, 795.205, -914.79, 58.3299, 0, 0, 0, NULL, 'vine-schild ', 'ostern'),
(1317, 796.829, -917.197, 58.3398, 0, 0, 0, NULL, 'vine-schild ', 'ostern'),
(1318, 798.524, -919.502, 58.3267, 0, 0, 0, NULL, 'vine-schild ', 'ostern'),
(1319, 800.027, -921.751, 58.3382, 0, 0, 0, NULL, 'vine-schild ', 'ostern'),
(1320, 801.472, -923.927, 58.3509, 0, 0, 0, NULL, 'vine-schild ', 'ostern'),
(1321, 805.074, -926.736, 58.25, 0, 0, 0, NULL, 'vine-schild ', 'ostern'),
(1322, 805.164, -897.024, 72.0187, 0, 0, 0, NULL, 'vine-schild ', 'ostern'),
(1323, 803.943, -898.472, 71.995, 0, 0, 0, NULL, 'vine-schild ', 'ostern'),
(1324, 802.87, -900.116, 72.0367, 0, 0, 0, NULL, 'vine-schild ', 'ostern'),
(1325, 801.471, -901.728, 71.9995, 0, 0, 0, NULL, 'vine-schild ', 'ostern'),
(1326, 800.23, -903.403, 72.0107, 0, 0, 0, NULL, 'vine-schild ', 'ostern'),
(1327, 799.087, -904.912, 72.0166, 0, 0, 0, NULL, 'vine-schild ', 'ostern'),
(1328, 793.192, -905.048, 71.9691, 0, 0, 0, NULL, 'vine-schild ', 'ostern'),
(1329, 792.224, -900.966, 72.0669, 0, 0, 0, NULL, 'vine-schild ', 'ostern'),
(1330, 792.831, -899.07, 72.0921, 0, 0, 0, NULL, 'vine-schild ', 'ostern'),
(1331, 793.755, -897.226, 72.0721, 0, 0, 0, NULL, 'vine-schild ', 'ostern'),
(1332, 794.447, -895.156, 72.0899, 0, 0, 0, NULL, 'vine-schild ', 'ostern'),
(1333, 795.299, -893.475, 72.0714, 0, 0, 0, NULL, 'vine-schild ', 'ostern'),
(1334, 796.157, -891.698, 72.0508, 0, 0, 0, NULL, 'vine-schild ', 'ostern'),
(1335, 836.861, -885.726, 68.2463, 0, 0, 0, NULL, 'vine-villa ', 'ostern'),
(1336, 822.082, -889.9, 68.3404, 0, 0, 0, NULL, 'vine-villa ', 'ostern'),
(1337, 822.682, -899.733, 68.3398, 0, 0, 0, NULL, 'vine-villa ', 'ostern'),
(1338, 836.402, -909.196, 68.339, 0, 0, 0, NULL, 'vine-villa ', 'ostern'),
(1339, 845.414, -905.189, 68.3402, 0, 0, 0, NULL, 'vine-villa ', 'ostern'),
(1340, 827.807, -850.259, 69.4951, 0, 0, 0, NULL, 'vine-haus ', 'ostern'),
(1341, 823.632, -859.67, 69.7281, 0, 0, 0, NULL, 'vine-haus ', 'ostern'),
(1342, 836.526, -861.586, 69.4102, 0, 0, 0, NULL, 'vine-haus ', 'ostern'),
(1343, 871.294, -878.032, 77.3172, 0, 0, 0, NULL, 'vine-haus ', 'ostern'),
(1344, 878.245, -875.591, 77.387, 0, 0, 0, NULL, 'vine-haus ', 'ostern'),
(1345, 942.908, -843.476, 93.5258, 0, 0, 0, NULL, 'vine-haus ', 'ostern'),
(1346, 980.947, -832.024, 95.0648, 0, 0, 0, NULL, 'vine-haus ', 'ostern'),
(1347, 989.559, -828.319, 95.0175, 0, 0, 0, NULL, 'vine-haus ', 'ostern'),
(1348, 1013.51, -775.021, 104.707, 0, 0, 0, NULL, 'vine-haus ', 'ostern'),
(1349, 1012.74, -762.861, 112.114, 0, 0, 0, NULL, 'vine-haus ', 'ostern'),
(1350, 1030.48, -814.245, 101.424, 0, 0, 0, NULL, 'vine-haus ', 'ostern'),
(1351, 1034.9, -811.573, 101.412, 0, 0, 0, NULL, 'vine-haus ', 'ostern'),
(1352, 1043.95, -789.041, 103.836, 0, 0, 0, NULL, 'vine-haus ', 'ostern'),
(1353, 1049.72, -640.492, 119.685, 0, 0, 0, NULL, 'vine-villa ', 'ostern'),
(1354, 1059.86, -646.188, 119.685, 0, 0, 0, NULL, 'vine-villa ', 'ostern'),
(1355, 1053.87, -651.919, 119.673, 0, 0, 0, NULL, 'vine-villa ', 'ostern'),
(1356, 1039.03, -656.518, 119.678, 0, 0, 0, NULL, 'vine-villa ', 'ostern'),
(1357, 1031.81, -650.698, 119.68, 0, 0, 0, NULL, 'vine-villa ', 'ostern'),
(1358, 1087.64, -643.806, 113.005, 0, 0, 0, NULL, 'vine-villa ', 'ostern'),
(1359, 1098.33, -647.602, 113.214, 0, 0, 0, NULL, 'vine-villa ', 'ostern'),
(1360, 1106.4, -649.404, 113.072, 0, 0, 0, NULL, 'vine-villa ', 'ostern'),
(1361, 1112.58, -655.214, 112.997, 0, 0, 0, NULL, 'vine-villa ', 'ostern'),
(1362, 1304.01, -615.56, 105.842, 0, 0, 0, NULL, 'vine-villa ', 'ostern'),
(1363, 1335.04, -602.881, 107.191, 0, 0, 0, NULL, 'vine-villa ', 'ostern'),
(1364, 1355.67, -623.466, 109.133, 0, 0, 0, NULL, 'vine-villa ', 'ostern'),
(1365, 1365.75, -622.065, 108.694, 0, 0, 0, NULL, 'vine-villa ', 'ostern'),
(1366, 1363.65, -609.205, 108.687, 0, 0, 0, NULL, 'vine-villa ', 'ostern'),
(1367, 1320.18, -636.229, 108.7, 0, 0, 0, NULL, 'vine-haus ', 'ostern'),
(1368, 1347.23, -627.735, 108.702, 0, 0, 0, NULL, 'vine-haus ', 'ostern'),
(1369, 1411.13, -633.696, 87.563, 0, 0, 0, NULL, 'vine-haus ', 'ostern'),
(1370, 1420.92, -639.349, 90.8395, 0, 0, 0, NULL, 'vine-haus ', 'ostern'),
(1371, 1427.7, -660.01, 94.3129, 0, 0, 0, NULL, 'vine-haus ', 'ostern'),
(1372, 1446.19, -633.5, 95.1363, 0, 0, 0, NULL, 'vine-haus ', 'ostern'),
(1373, 1456.27, -638.729, 95.5369, 0, 0, 0, NULL, 'vine-haus ', 'ostern'),
(1374, 1501.75, -688.13, 94.3269, 0, 0, 0, NULL, 'vine-villa ', 'ostern'),
(1375, 1508.49, -688.288, 94.3215, 0, 0, 0, NULL, 'vine-villa ', 'ostern'),
(1376, 1512.89, -680.693, 94.3176, 0, 0, 0, NULL, 'vine-villa ', 'ostern'),
(1377, 1507.18, -667.338, 95.1691, 0, 0, 0, NULL, 'vine-villa ', 'ostern'),
(1378, 1488.7, -667.938, 95.1626, 0, 0, 0, NULL, 'vine-villa ', 'ostern'),
(1379, 1480.22, -671.495, 94.9412, 0, 0, 0, NULL, 'vine-villa ', 'ostern'),
(1380, 1521.57, -683.789, 94.3109, 0, 0, 0, NULL, 'vine-villa ', 'ostern'),
(1381, 1456.66, -780.146, 92.7657, 0, 0, 0, NULL, 'vine-mast ', 'ostern'),
(1382, 1516.72, -758.44, 79.9689, 0, 0, 0, NULL, 'vine-haus ', 'ostern'),
(1383, 1520.56, -753.319, 80.7403, 0, 0, 0, NULL, 'vine-haus ', 'ostern'),
(1384, 1527.43, -755.264, 78.9858, 0, 0, 0, NULL, 'vine-haus ', 'ostern'),
(1385, 1520.65, -772.561, 79.4034, 0, 0, 0, NULL, 'vine-haus ', 'ostern'),
(1386, 1535.49, -776.789, 78.857, 0, 0, 0, NULL, 'vine-haus ', 'ostern'),
(1387, 1533.47, -794.882, 72.0766, 0, 0, 0, NULL, 'vine-haus ', 'ostern'),
(1388, 1533.59, -802.542, 72.0065, 0, 0, 0, NULL, 'vine-haus ', 'ostern'),
(1389, 1538.58, -809.223, 71.7804, 0, 0, 0, NULL, 'vine-haus ', 'ostern'),
(1390, 1549.05, -803.115, 71.788, 0, 0, 0, NULL, 'vine-haus ', 'ostern'),
(1391, 1548.99, -795.548, 71.788, 0, 0, 0, NULL, 'vine-haus ', 'ostern'),
(1392, 1537.25, -818.245, 71.4764, 0, 0, 0, NULL, 'vine-haus ', 'ostern'),
(1393, 1546.11, -816.73, 71.6944, 0, 0, 0, NULL, 'vine-haus ', 'ostern'),
(1394, 1539.83, -841.594, 63.8992, 0, 0, 0, NULL, 'vine-haus ', 'ostern'),
(1395, 1539.81, -856.665, 63.904, 0, 0, 0, NULL, 'vine-haus ', 'ostern'),
(1396, 1545.87, -845.814, 63.8876, 0, 0, 0, NULL, 'vine-haus ', 'ostern'),
(1397, 1563.61, -850.527, 60.9352, 0, 0, 0, NULL, 'vine-haus ', 'ostern'),
(1398, 1524.86, -885.581, 60.6927, 0, 0, 0, NULL, 'vine-haus ', 'ostern'),
(1399, 1534.75, -895.376, 60.6934, 0, 0, 0, NULL, 'vine-haus ', 'ostern'),
(1400, 1495.91, -895.404, 57.9441, 0, 0, 0, NULL, 'vine-haus ', 'ostern'),
(1401, 1477.29, -903.516, 54.8913, 0, 0, 0, NULL, 'vine-haus ', 'ostern'),
(1402, 1462.62, -904.84, 54.4043, 0, 0, 0, NULL, 'vine-haus ', 'ostern'),
(1403, 1445.18, -923.278, 47.9225, 0, 0, 0, NULL, 'vine-haus ', 'ostern'),
(1404, 1430.43, -922.898, 47.916, 0, 0, 0, NULL, 'vine-haus ', 'ostern'),
(1405, 1426.6, -907.693, 47.4947, 0, 0, 0, NULL, 'vine-haus ', 'ostern'),
(1406, 1421.8, -907.135, 47.4947, 0, 0, 0, NULL, 'vine-haus ', 'ostern'),
(1407, 1416.81, -913.442, 47.1435, 0, 0, 0, NULL, 'vine-haus ', 'ostern'),
(1408, 1414.43, -915.147, 47.1435, 0, 0, 0, NULL, 'vine-haus ', 'ostern'),
(1409, 1411.33, -914.854, 47.1435, 0, 0, 0, NULL, 'vine-haus ', 'ostern'),
(1410, 1407.91, -917.029, 47.1435, 0, 0, 0, NULL, 'vine-haus ', 'ostern'),
(1411, 1402.88, -918.41, 47.1435, 0, 0, 0, NULL, 'vine-haus ', 'ostern'),
(1412, 1399.99, -915.512, 47.1435, 0, 0, 0, NULL, 'vine-haus ', 'ostern'),
(1413, 1424.49, -906.964, 50.7947, 0, 0, 0, NULL, 'vine-haus ', 'ostern'),
(1414, 1449.51, -806.789, 84.2669, 0, 0, 0, NULL, 'vine-schild ', 'ostern'),
(1415, 1438.61, -807.207, 86.4728, 0, 0, 0, NULL, 'vine-schild ', 'ostern'),
(1416, 1427.77, -807.472, 86.4774, 0, 0, 0, NULL, 'vine-schild ', 'ostern'),
(1417, 1417.81, -806.646, 85.0321, 0, 0, 0, NULL, 'vine-schild ', 'ostern'),
(1418, 1413.18, -806.456, 85.0462, 0, 0, 0, NULL, 'vine-schild ', 'ostern'),
(1419, 1404.67, -805.675, 85.0206, 0, 0, 0, NULL, 'vine-schild ', 'ostern'),
(1420, 1393.9, -806.586, 85.0378, 0, 0, 0, NULL, 'vine-schild ', 'ostern'),
(1421, 1385.34, -806.572, 86.3404, 0, 0, 0, NULL, 'vine-schild ', 'ostern'),
(1422, 1377.83, -806.22, 85.0284, 0, 0, 0, NULL, 'vine-schild ', 'ostern'),
(1423, 1347.99, -843.694, 49.396, 0, 0, 0, NULL, 'vine-busch ', 'ostern'),
(1424, 1310.02, -898.88, 39.1462, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1425, 1263.81, -897.638, 42.4408, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1426, 1249.7, -894.8, 42.4577, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1427, 1268.44, -911.936, 42.453, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1428, 1290.16, -945.444, 40.7373, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1429, 1290.03, -958.363, 40.6692, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1430, 1248.31, -973.559, 39.8199, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1431, 1236.47, -974.153, 43.4229, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1432, 1229.94, -990.233, 43.0485, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1433, 1197.59, -988.854, 43.0451, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1434, 1171.29, -989.617, 37.7689, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1435, 1192.66, -1020.68, 32.1135, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1436, 1207.97, -1006.47, 32.143, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1437, 1234.93, -1023.55, 32.1623, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1438, 1236, -995.171, 35.1392, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1439, 1255.4, -1017.4, 32.8381, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1440, 1580.37, 922.304, 10.3844, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1441, 1578.62, 886.036, 10.383, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1442, 1636.18, 890.469, 10.2806, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1443, 1685.67, 890.427, 10.2745, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1444, 1692.33, 889.708, 10.2649, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1445, 1756.02, 883.984, 10.3895, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1446, 1745.65, 905.855, 10.3323, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1447, 1729.22, 906.046, 10.7862, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1448, 1225.39, -1059.55, 30.0829, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1449, 1730.04, 933.888, 10.8203, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1450, 1228.6, -1092.33, 25.2819, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1451, 1226.75, -1107.69, 24.4753, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1452, 1197.42, -1111.01, 24.5239, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1453, 1181.82, -1115.71, 23.9886, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1454, 1750.15, 986.647, 10.2709, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1455, 1754.27, 997.923, 10.2954, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1456, 1756.12, 1007.72, 10.3921, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1457, 1755.97, 1024.18, 10.3929, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1458, 1755.93, 1037.11, 10.3926, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1459, 1755.82, 1073.39, 10.391, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1460, 1755.77, 1088.67, 10.3931, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1461, 1183.12, -1097.37, 27.8687, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1462, 1756.11, 1115.57, 10.388, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1463, 1150.5, -1072.46, 27.7592, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1464, 1151.52, -1093.47, 25.4727, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1465, 1148.95, -1097.78, 25.746, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1466, 1155.37, -1028.67, 31.8301, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1467, 1667, 1112.43, 10.3003, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1468, 1672.1, 1112.62, 10.308, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1469, 1651.08, 1117.91, 10.2551, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1470, 1641.92, 1116.65, 10.2622, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1471, 1631.08, 1116.31, 10.2679, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1472, 1619.4, 1116.54, 10.2764, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1473, 1613.57, 1116.61, 10.2594, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1474, 1125.61, -1005.91, 29.4288, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1475, 1601.13, 1116.27, 10.2832, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1476, 1595.14, 1116.1, 10.2455, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1477, 1114.89, -1004.37, 29.429, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1478, 1092.17, -1008.4, 35.4601, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1479, 1579.17, 1122.32, 10.3857, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1480, 1113.15, -1027.39, 31.4538, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1481, 1596.59, 1060.66, 10.3661, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1482, 1601.13, 1060.79, 10.3832, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1483, 1124.67, -1055.72, 29.3048, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1484, 1124.52, -1070.16, 29.0025, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1485, 1604.55, 1061.12, 10.4002, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1486, 1124.32, -1091.88, 25.1124, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1487, 1631.59, 1041.33, 10.3903, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1488, 1074.47, -1079.19, 26.706, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1489, 1058.81, -1108.95, 23.9435, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1490, 1053.48, -1100.43, 23.8854, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1491, 1050.2, -1073.94, 28.0685, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1492, 1660.59, 922.591, 10.3897, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1493, 1036.53, -1073.4, 27.9241, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1494, 1666.95, 925.06, 10.3843, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1495, 1675.44, 932.643, 10.3858, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1496, 1677.36, 940.435, 10.3861, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1497, 984.449, -1097.08, 23.9282, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1498, 939.406, -1103.42, 23.8792, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1499, 933.521, -1103.56, 23.8816, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1500, 902.217, -1103.74, 23.6616, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1501, 876.013, -1103.04, 23.8207, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1502, 851.265, -1107.8, 23.8096, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1503, 829.891, -1113.02, 23.7148, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1504, 850.841, -1127.91, 23.4454, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1505, 861.406, -1128.97, 23.4385, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1506, 1455.97, 1201.3, 10.3852, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1507, 880.902, -1129.38, 23.4478, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1508, 918.755, -1129.18, 23.4449, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1509, 1295.62, 1208.83, 10.3855, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1510, 1257.42, 1203.82, 10.3285, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1511, 1249.61, 1204.45, 9.1521, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1512, 1244.54, 1202.67, 8.50846, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1513, 964.895, -1082.53, 24.3222, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1514, 1244.54, 1194.74, 8.4686, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1515, 969.153, -1060.46, 27.562, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1516, 1245.94, 1187.08, 8.87019, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1517, 1247.79, 1181.56, 8.84509, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1518, 1250.79, 1180.77, 9.11144, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1519, 1258.57, 1182.77, 10.5891, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1520, 970.509, -1013.71, 32.9001, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1521, 969.963, -988.259, 37.5898, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1522, 959.176, -914.514, 45.3325, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1523, 972.706, -916.789, 45.3421, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1524, 1178.33, 1182.58, 10.1947, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1525, 1182.78, 1182.78, 9.70243, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1526, 1185.12, 1182.84, 9.43234, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1527, 970.652, -925.586, 45.3294, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1528, 1188.8, 1189.54, 8.8911, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1529, 1188.02, 1193.08, 9.07418, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1530, 1188.05, 1200.38, 9.09802, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1531, 944.663, -894.786, 45.34, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1532, 909.151, -896.448, 45.3381, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1533, 1178.61, 1204.15, 10.1048, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1534, 1181.49, 1204.6, 9.54215, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1535, 898.695, -914.037, 42.8579, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1536, 1184.69, 1203.71, 9.44247, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1537, 914.281, -927.742, 42.1674, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1538, 928.331, -931.972, 42.1698, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1539, 835.097, -947.851, 49.9589, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1540, 852.051, -914.739, 60.014, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1541, 1174.38, 1222.14, 10.4092, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1542, 1160.26, 1221.7, 10.3824, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1543, 1158.54, 1214.02, 10.3947, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1544, 1158.21, 1209.07, 10.4429, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1545, 1096.27, 1204.38, 10.4517, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1546, 1096.41, 1209.32, 10.3988, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1547, 1096.64, 1222.25, 10.3938, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1548, 874.181, -956.139, 40.9344, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1549, 979.009, 1159.79, 10.3984, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1550, 886.625, -975.202, 36.7095, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1551, 864.958, -988.164, 34.4652, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1552, 847.75, -1003.41, 29.7411, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1553, 823.581, -1028.77, 24.5924, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1554, 829.223, -1055.41, 24.8892, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1555, 850.724, -1034.67, 25.6695, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1556, 977.134, 1067.18, 10.813, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1557, 881.2, -1005.16, 35.1748, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1558, 932.925, -1009.27, 37.5985, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1559, 1000.73, 1067.66, 10.3989, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1560, 1132.56, 1006.77, 10.5656, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1561, 922.819, -1209.57, 16.5448, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1562, 1096.39, 961.304, 10.3855, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1563, 1070.26, 961.437, 10.3953, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1564, 1042, 959.868, 10.3943, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1565, 1021.3, 963.074, 10.3957, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1566, 925.395, -1192.78, 16.5426, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1567, 1000.41, 971.622, 10.3996, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1568, 981.396, 970.95, 10.3855, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1569, 978.025, 958.464, 10.3909, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1570, 979.93, 930.63, 10.3895, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1571, 979.36, 905.228, 10.3905, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1572, 979.566, 878.816, 10.3913, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1573, 980.436, 851.505, 10.3894, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1574, 927.799, -1176.8, 16.5513, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1575, 998.741, 825.173, 10.4027, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1576, 1017.61, 825.959, 10.4486, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1577, 1018.92, 844.243, 11.088, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1578, 887.105, -1164.13, 16.5471, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1579, 847.661, -1164.91, 16.5468, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1580, 1013.03, 865.127, 12.1966, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1581, 1006.07, 883.344, 12.1361, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1582, 1000.4, 910.466, 11.0445, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1583, 1004.88, 935.602, 10.5379, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1584, 1021.04, 939.111, 11.4036, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1585, 1038.03, 932.113, 11.9079, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1586, 821.322, -1227.01, 15.112, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1587, 1059.72, 932.198, 10.6239, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1588, 1080.51, 933.992, 12.0161, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1589, 1097.01, 937.816, 13.8529, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1590, 1114.79, 942.782, 10.8781, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1591, 1135.37, 949.227, 10.3919, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1592, 1153.36, 936.118, 10.3931, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1593, 1145.5, 919.084, 10.3946, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1594, 1137.46, 912.085, 10.4389, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1595, 1122.42, 904.442, 10.6409, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1596, 1113.37, 900.354, 11.0627, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1597, 1092.09, 890.854, 10.6902, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1598, 1073.47, 883.367, 10.4013, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1599, 1056.61, 868.86, 10.4446, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1600, 1032.74, 870.978, 13.0042, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1601, 1039.24, 876.866, 13.1629, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1602, 1054.37, 889, 11.1792, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1603, 1070.79, 903.782, 10.3974, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1604, 1086.84, 916.805, 13.5229, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1605, 852.52, -1268.13, 14.2302, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1606, 846.127, -1294.3, 13.2194, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1607, 895.032, -1297.97, 13.3483, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1608, 920.309, -1288.77, 13.8304, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1609, 795.253, 850.805, 7.8748, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1611, 790.544, 853.988, 8.23206, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1612, 790.63, 867.856, 14.41, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1613, 790.891, 874.67, 17.539, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1614, 791.766, 878.958, 18.1765, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1615, 793.756, 892.649, 18.5115, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1616, 795.949, 906.034, 18.7143, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1617, 794.916, 916.327, 19.1325, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1618, 790.526, 926.328, 20.6473, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1619, 788.635, 934.264, 21.4219, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1620, 790.188, 947.447, 23.6725, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1621, 883.596, -1195.94, 16.5429, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1622, 845.96, -1180.5, 16.5502, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1623, 959.44, -1274.95, 14.8601, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1624, 977.492, -1281.28, 13.554, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1625, 803.059, 828.191, 7.97696, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1626, 797.527, 824.829, 7.10031, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1627, 981.053, -1305.44, 12.9587, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1628, 788.603, 819.204, 6.76287, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1629, 995.494, -1308.3, 12.956, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1630, 789.378, 814.442, 9.4181, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1631, 789.892, 805.266, 14.4064, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1632, 788.771, 798.774, 17.7332, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1633, 788.896, 790.041, 21.2261, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1634, 789.775, 773.249, 24.8591, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1635, 789.252, 761.139, 25.925, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1636, 784.029, 755.753, 26.6615, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1637, 776.605, 742.188, 27.5607, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1638, 768.271, 730.309, 27.9935, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1639, 758.851, 728.354, 29.2245, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1640, 907.88, -1364.4, 13.3862, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1641, 727.201, 717.203, 26.3828, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1642, 718.464, 715.604, 25.6611, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1643, 709.913, 712.927, 23.7722, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1644, 699.622, 709.812, 21.597, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1645, 688.613, 706.141, 19.9218, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1646, 667.324, 701.598, 17.3819, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1647, 647.013, 696.434, 13.1816, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1648, 624.605, 696.993, 9.71335, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1649, 875.399, -1363.91, 25.2421, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1650, 590.3, 704.633, 8.88469, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1651, 570.8, 710.569, 9.20964, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1652, 871.353, -1370.97, 24.7718, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1653, 558.103, 714.301, 9.18336, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1654, 899.597, -1381.15, 24.767, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1655, 662.703, 737.942, -9.00457, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1656, 633.483, 739.496, -13.1497, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1657, 611.666, 745.563, -14.6459, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1658, 569.886, 760.353, -16.8391, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1659, 524.691, 776.587, -21.4111, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1660, 503.837, 785.257, -22.6245, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1661, 492.405, 780.401, -22.42, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1662, 481.314, 805.684, -19.8, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1663, 489.896, 810.594, -20.6351, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1664, 848.993, -1367.57, 22.615, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1665, 491.66, 848.985, -29.9248, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1666, 474.734, 873.399, -30.0633, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1667, 469.238, 870.604, -29.0495, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1668, 816.411, -1387.32, 13.1679, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1669, 466.5, 868.403, -28.4557, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1670, 461.069, 886.117, -28.3023, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1671, 461.451, 889.996, -28.2359, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1672, 784.901, -1383.05, 13.273, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1673, 464.341, 890.692, -28.6706, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1674, 469.291, 890.128, -29.4142, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1675, 483.812, 909.42, -30.2486, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1676, 758.201, -1382.85, 13.2399, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1677, 501.534, 937.208, -29.4324, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1678, 756.78, -1370.01, 17.4277, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1679, 755.282, -1358.86, 21.2148, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1680, 742.661, -1359.17, 21.2071, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1681, 502.43, 970.078, -25.0541, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1682, 516.487, 976.654, -24.6014, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1683, 576.6, 969.924, -19.1798, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1684, 734.41, -1362.96, 25.6922, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1685, 748.592, -1375.1, 25.6922, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1686, 522.043, 981.901, -11.9948, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1687, 521.252, 992.326, -10.1807, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1688, 709.053, 914.483, -19.0849, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1689, 676.789, 828.077, -28.607, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1690, 688.342, 847.296, -28.6414, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1691, 675.531, 827.665, -43.5881, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1692, 686.944, 846.73, -43.3836, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1693, 683.266, 836.704, -43.4017, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1694, 661.287, 862.951, -42.9547, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1695, 653.42, 867.057, -42.6638, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1696, 623.438, 884.626, -43.0512, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1697, 619.039, 886.767, -41.1028, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1698, 620.787, 889.437, -41.1028, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1699, 622.75, 892.712, -41.1028, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1700, 624.699, 896.007, -41.1028, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1701, 733.878, -1357.33, 23.146, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1702, 623.643, 899.738, -37.1285, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1703, 618.889, 891.491, -37.1285, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1704, 621.397, 889.333, -35.5352, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1705, 623.028, 893.241, -35.338, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1706, 625.146, 897.105, -36.1665, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1707, 627.118, 890.931, -42.5549, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1708, 656.146, -1305.74, 13.2001, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1709, 673.039, -1306.32, 13.2032, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1710, 590.202, 876.615, -42.4973, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1711, 586.945, 876.586, -42.4973, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1712, 586.293, 870.372, -42.4973, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1713, 674.457, -1272.86, 13.1982, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1714, 589.4, 869.613, -42.4973, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1715, 695.458, -1246.64, 13.1454, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1716, 567.272, 875.171, -44.0926, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1717, 727.766, -1258.14, 13.1235, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1718, 541.166, 833.142, -40.6824, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1719, 533.88, 835.219, -41.6997, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1720, 726.825, -1277.05, 13.2253, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1721, 756.36, -1274.66, 13.1271, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1722, 780.376, -1160.86, 23.0378, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1723, 782.422, -1145.75, 23.2187, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1724, 596.625, 812.953, -31.9677, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1725, 666.311, -1222.43, 15.4427, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1726, 659.321, -1235.13, 14.9889, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1727, 610.253, -1233.98, 17.928, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1728, 740.065, 950.932, -7.88486, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1729, 579.199, -1245.82, 17.2243, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1730, 568.614, -1251.79, 17.0103, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1731, 573.197, -1260.87, 16.7205, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1732, 585.851, -1268.19, 16.8518, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1733, 886.465, 1040.38, 18.108, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1734, 857.97, 1070.94, 24.5403, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1735, 831.329, 1102.14, 29.8549, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1736, 588.748, -1304.71, 13.8197, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1737, 808.687, 1138.29, 28.1017, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1738, 798.812, 1168.82, 28.2125, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1739, 793.17, 1207.51, 23.6341, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1740, 800.679, 1236.29, 24.2666, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1741, 601.585, -1298.1, 14.2278, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1742, 811.975, 1299.01, 26.8476, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1743, 819.363, 1326.89, 31.6725, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1744, 822.72, 1354.91, 34.3511, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1745, 838.736, 1386.79, 32.9833, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1746, 847.74, 1404.56, 29.1534, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1747, 854.61, 1434.66, 26.6636, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1748, 855.077, 1477.66, 24.9425, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1749, 851.908, 1511.66, 21.3993, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1750, 844.248, 1586.22, 17.2744, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1751, 835.344, 1620.97, 6.97526, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1752, 826.354, 1655.56, 4.67593, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1753, 821.341, 1692.9, 4.84583, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1754, 812.622, 1730.43, 4.87259, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1755, 792.057, 1763.17, 4.0943, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1756, 771.821, 1796.41, 3.81963, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1757, 776.556, 1819.47, 4.71688, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1758, 786.714, 1850.17, 5.50167, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1759, 771.11, 1892.97, 4.60976, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1760, 755.513, 1933.65, 5.13407, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1761, 763.766, 1963.66, 4.9019, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1762, 759.696, 1989.8, 4.90759, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1763, 759.399, 2018.67, 5.82659, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1764, 773.93, 2025.77, 6.25291, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1765, 800.125, 2028.13, 6.25511, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1766, 481.188, -1259.19, 15.7581, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1767, 801.81, 2065.93, 9.50432, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1768, 794.802, 2093.33, 6.34624, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1769, 777.324, 2112.25, 7.62893, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1770, 462.804, -1274.29, 15.0393, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1771, 758.044, 2149.41, 10.7899, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1772, 447.02, -1288.4, 14.8374, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1773, 766.825, 2168.19, 11.0531, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1774, 784.661, 2183.32, 10.4571, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1775, 817.942, 2206.56, 9.63132, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1776, 834.439, 2219.06, 10.2425, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1777, 846.741, 2241.46, 10.393, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1778, 447.519, -1298.86, 14.7861, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1779, 845.062, 2265.55, 10.3908, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1780, 840.726, 2284.35, 10.3902, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1781, 839.104, 2313.42, 10.3863, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1782, 850.841, 2340.54, 10.3909, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1783, 867.328, 2352.35, 10.3909, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1784, 883.381, 2356.66, 10.3905, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1785, 912.681, 2358.73, 10.2272, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1786, 941.138, 2367.28, 10.3892, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1787, 967.115, 2374.65, 10.3841, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1788, 1040.39, 2405.98, 10.405, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1789, 1057, 2417.98, 10.3894, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1790, 1086.39, 2434.44, 10.3912, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1791, 395.725, -1306.74, 14.4254, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1792, 384.375, -1314.41, 14.328, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1793, 377.349, -1328.69, 14.2482, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1794, 1469.99, 2434.07, 9.0486, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1795, 1479.87, 2436.57, 8.37009, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1796, 1484.39, 2434.76, 8.86888, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1797, 1488.61, 2427.02, 9.7013, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1798, 343.09, -1357.25, 14.0467, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1799, 1488.24, 2423.72, 10.1484, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1800, 351.539, -1347.79, 17.5232, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1801, 1466, 2419.26, 10.3305, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1802, 1466.2, 2425.03, 10.083, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1803, 1465.96, 2430.58, 9.16278, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1804, 341.072, -1330.34, 17.5226, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1805, 1346.41, 2377.64, 10.0865, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1806, 1341.44, 2374.7, 10.3022, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1807, 1337.95, 2366.92, 10.3846, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1808, 1344.34, 2370.03, 10.3849, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1809, 207.908, -1432.33, 12.7707, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1810, 1357.04, 2355.31, 10.385, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1811, 1349.4, 2355.13, 10.3856, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1812, 1344.25, 2353.86, 10.3933, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1813, 1339.58, 2345, 10.3823, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1814, 1337.54, 2336.72, 10.3961, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1815, 215.922, -1499.72, 16.4141, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1816, 1335.04, 2325.58, 10.3935, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1817, 1327.48, 2311.23, 10.3837, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1818, 1320.06, 2301.31, 10.3932, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1819, 1314.16, 2293.78, 10.3936, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1820, 1302.36, 2279.71, 10.3937, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1821, 1284.8, 2260.36, 10.3813, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1822, 291.545, -1479.78, 32.5223, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1823, 1255.76, 2191.7, 6.82435, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1824, 1261.88, 2198.97, 7.38034, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1825, 1269.62, 2210.19, 7.82406, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1826, 1281.09, 2223.14, 8.90909, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1827, 1297.8, 2241.66, 10.4031, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1828, 1309.61, 2255.15, 10.3828, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1829, 1320.65, 2267.81, 10.3968, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1830, 332.835, -1519.33, 35.392, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1831, 1331.65, 2280.4, 10.3946, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1832, 1338.9, 2289.65, 10.3834, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1833, 1347.96, 2303.92, 10.3905, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1834, 1352.52, 2312.6, 10.384, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1835, 1356.48, 2321.13, 10.3844, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1836, 311.755, -1540.54, 35.599, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1837, 1358.96, 2329.37, 10.3924, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1838, 1361.44, 2340.25, 10.3961, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1839, 297.599, -1559.7, 35.6017, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1840, 1361.97, 2348.6, 10.3943, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1841, 291.697, -1532.25, 35.6041, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1842, 317.265, -1494.81, 35.6039, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1843, 1374.33, 2317.91, 10.3837, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1844, 428.443, -1508.81, 30.6461, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1845, 404.094, -1547.5, 31.8526, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1846, 1293.98, 2202.15, 10.5347, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1847, 1289.81, 2185.04, 11.6451, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1848, 1283.74, 2167.73, 13.0405, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1849, 1280.21, 2153.71, 13.5881, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1850, 358.855, -1559.02, 32.3729, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1851, 1277.46, 2141.55, 14.1697, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1852, 1276.54, 2129.12, 14.1388, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1853, 1278.48, 2116.02, 14.1469, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1854, 303.814, -1606.15, 32.6754, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1855, 274.845, -1615.78, 32.7623, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1856, 1273.27, 2101.69, 13.8638, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1857, 1277.69, 2080.46, 13.402, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1858, 1287.64, 2079.62, 13.7608, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1859, 1295.08, 2089.86, 10.3945, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1860, 261.883, -1506.86, 32.3914, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1861, 1295.64, 2076.75, 10.3936, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1862, 238.634, -1526.83, 31.1659, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1863, 208.666, -1544.71, 30.7222, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1864, 203.04, -1556.04, 29.4267, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1865, 1325.11, 2091.38, 12.7838, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1866, 208.124, -1584.71, 27.4024, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1867, 1337.94, 2079.95, 13.5931, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1868, 1339.89, 2079.33, 13.4223, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1869, 1351.53, 2084.96, 13.5612, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1870, 1356.46, 2089.47, 12.9427, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1871, 1367.39, 2089.69, 12.6282, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1872, 364.378, -1722.64, 6.4896, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1873, 1366.18, 2085.02, 13.0609, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1874, 1374.88, 2086.84, 12.637, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1875, 476.8, -1749.67, 8.95779, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1876, 1374.7, 2091.53, 12.2271, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1877, 1396.14, 2099.44, 10.5894, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1878, 491.504, -1755.94, 13.6907, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1879, 503.805, -1769.07, 13.7445, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1880, 522.847, -1760.59, 13.8228, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1881, 1398.44, 2096.9, 10.3972, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1882, 1416.99, 2098, 10.5768, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1883, 553.165, -1772.92, 13.9238, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1884, 578.974, -1772.14, 10.8442, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1885, 1474.21, 2196.94, 10.594, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1886, 625.04, -1786.04, 13.739, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1887, 640.234, -1778.78, 13.6056, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1888, 644.905, -1776.75, 11.5211, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1889, 1483.08, 2222.58, 12.7031, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1890, 1483.86, 2223.7, 13.057, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1891, 1485.63, 2226.2, 11.8984, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1892, 1485.85, 2228.24, 11.8984, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1893, 662.478, -1789.24, 12.039, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1894, 1483.19, 2235.73, 11.8984, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1895, 681.138, -1793.96, 12.0381, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1896, 697.174, -1798.65, 12.0449, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1897, 712.241, -1803.26, 12.0339, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1898, 1548.88, 2299.75, 10.3847, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1899, 750.339, -1806.62, 12.589, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1900, 1553.53, 2295.51, 10.3899, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1901, 773.993, -1809.86, 12.5906, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1902, 1553.73, 2191.63, 10.3945, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1903, 796.104, -1811.38, 12.5898, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1904, 1549.41, 2187.03, 10.3786, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1905, 805.35, -1822.17, 12.5935, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1906, 812.223, -1822.02, 12.5483, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1907, 1579.69, 2217.54, 10.6347, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1908, 1594.01, 2218.97, 10.6437, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1909, 1603.47, 2241.25, 10.6294, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1910, 1616.04, 2242.2, 10.3862, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1911, 1616.6, 2189.75, 10.8203, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1912, 1618.3, 2210.55, 10.3825, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1913, 1621.41, 2210.62, 14.7667, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1914, 1622.51, 2213.18, 10.3869, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1915, 1618.16, 2213.13, 10.3825, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1916, 1644.14, 2137.53, 10.7798, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1917, 1650.26, 2138.22, 10.8977, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1918, 1657.76, 2137.36, 11.324, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1919, 1657.67, 2161.82, 10.772, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1920, 1649.17, 2162.18, 10.7766, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1921, 1643.86, 2162.24, 10.7834, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1922, 1630.08, 2125.17, 10.3532, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1923, 1629.45, 2116.81, 10.3163, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1924, 1633.8, 2114.95, 10.5577, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1925, 1644.93, 2108.54, 10.88, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1926, 1654.76, 2112.76, 10.89, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1927, 1651.66, 2102.75, 10.8794, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1928, 825.024, -1871.41, 12.4204, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1929, 1632.9, 2099.66, 10.6036, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1930, 823.924, -1945.94, 12.4231, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1931, 823.409, -1956.66, 12.4337, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1932, 1645.07, 2081.08, 10.8761, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1933, 1651.57, 2075.65, 10.8782, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1934, 824.57, -2034.74, 12.4317, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1935, 823.824, -2040.55, 12.4248, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1936, 826.856, -2061.36, 12.6188, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1937, 1634.45, 2071.08, 10.6504, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1938, 840.979, -2065.95, 12.6152, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1939, 1630.4, 2075.5, 10.4034, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1940, 816.828, -2071.75, 2.22976, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1941, 833.395, -2079.76, 2.23438, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1942, 856.481, -2071.8, 2.2121, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1943, 1641.27, 2045.05, 10.8838, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1944, 1636.85, 2043.78, 10.7724, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1945, 1649.14, 2038.08, 10.8825, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1946, 852.421, -2109.62, 1.325, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1947, 1657.72, 2058.46, 10.3031, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1948, 867.634, -2125.45, 1.47344, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1949, 1657.57, 2034.6, 10.768, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1950, 1599.92, 2039.16, 10.9233, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1951, 1605.71, 2038.88, 10.5865, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1952, 1601.35, 2027.26, 10.8197, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1953, 1579.06, 2047.75, 10.9342, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1954, 806.32, -2110.68, 1.325, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1955, 1600.9, 2072.49, 10.7269, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1956, 1579.76, 2056.72, 10.3473, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1957, 1579.05, 2081.1, 10.7555, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1958, 1594.26, 2087.25, 10.8758, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1959, 1581.76, 2083.21, 10.8216, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1960, 849.932, -2017.36, 12.4141, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1961, 1568.46, 2073.66, 10.3898, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1962, 850.454, -1987.48, 12.4249, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1963, 847.945, -1990.93, 12.4369, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1964, 1568.46, 2066.87, 10.3803, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1965, 849.649, -1937.25, 12.4386, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1966, 850.603, -1909.31, 12.4314, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1967, 983.167, -1830.44, 12.8504, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1968, 975.725, -1829.04, 12.8866, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1969, 962.722, -1824.68, 12.8656, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1970, 925.744, -1818.57, 12.8641, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1971, 915.06, -1817.45, 12.7925, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1972, 1008.2, -1864.31, 12.3811, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1973, 1110.37, -1835.35, 16.1675, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1974, 1096.48, -1830.91, 16.1627, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1975, 1086.6, -1812.05, 16.1662, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1976, 1086.91, -1805.28, 16.5938, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1977, 1083.18, -1750.38, 13.39, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1978, 1077.2, -1750.06, 13.3426, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1979, 1118, -1765.42, 13.1627, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1980, 1133.61, -1764.26, 13.171, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1981, 1585.21, 2093.67, 10.8819, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1982, 1140.18, -1768.36, 16.1764, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1983, 1601.61, 2123.69, 10.8607, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1984, 1121.74, -1782.42, 16.1566, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1985, 1110.16, -1787.64, 16.1543, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1986, 1579.03, 2134.98, 10.9231, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1987, 1074.76, -1794.33, 13.6363, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1988, 1074.88, -1800.23, 13.6526, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1989, 1592.29, 2141.75, 11.0324, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1990, 1074.76, -1823.83, 13.673, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1991, 1584.96, 2147.57, 11.0218, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1992, 1074.92, -1829.8, 13.6915, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1993, 891.354, -1864.78, 7.77949, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1994, 867.042, -1837.49, 10.1379, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1995, 1554.16, 2130.91, 11.0265, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1996, 1560.8, 2125.35, 11.0255, 0, 0, 0, NULL, 'Maxx ', 'ostern');
INSERT INTO `ostereier` (`ID`, `X`, `Y`, `Z`, `Inte`, `Dim`, `State`, `gefundenVon`, `comment`, `event`) VALUES
(1997, 797.475, -1755.57, 13.0555, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(1998, 1538.65, 2135.79, 10.5066, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(1999, 1545.83, 2095.87, 10.9099, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2000, 1540.15, 2102.41, 10.5805, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2001, 1539.68, 2106.95, 10.5321, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2002, 1539.65, 2072.62, 10.5531, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2003, 821.712, -1683.65, 14.5471, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2004, 1564.79, 2080.63, 10.9238, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2005, 822.161, -1675.05, 14.5471, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2006, 822.54, -1693.23, 14.5471, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2007, 821.99, -1706.38, 14.5471, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2008, 821.533, -1712.51, 14.5471, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2009, 821.788, -1719.87, 14.5471, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2010, 822.159, -1724.9, 14.5471, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2011, 1581.33, 2001.3, 10.5431, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2012, 1612.8, 2001.15, 10.5726, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2013, 1630.4, 2000.37, 10.5802, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2014, 819.891, -1614.44, 13.2711, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2015, 1694.71, 1967.25, 10.5733, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2016, 810.865, -1609.57, 13.2311, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2017, 1694.7, 1986.35, 10.7575, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2018, 790.643, -1608.5, 12.953, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2019, 794.267, -1625.11, 12.9544, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2020, 1673.28, 1952.2, 10.5973, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2021, 750.941, -1572.53, 13.1914, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2022, 1671.93, 1958.12, 10.5907, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2023, 1673.26, 1967.43, 10.3837, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2024, 1673.35, 1986.22, 10.3829, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2025, 1672.1, 1995.9, 10.5792, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2026, 685.005, -1570.89, 13.8177, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2027, 681.218, -1604.3, 13.6399, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2028, 1658.67, 1976.12, 10.5876, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2029, 1648.94, 1977.52, 10.388, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2030, 1630.27, 1977.57, 10.384, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2031, 649.983, -1555.67, 15.2235, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2032, 1593.46, 1977.5, 10.3816, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2033, 654.327, -1450.14, 14.425, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2034, 1583.37, 1976.11, 10.5844, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2035, 1604.1, 1948.93, 10.5768, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2036, 1603.52, 1941.27, 10.585, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2037, 579.577, -1438.3, 13.9552, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2038, 1618.17, 1946.27, 10.5811, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2039, 584.226, -1492.49, 15.0311, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2040, 1621.72, 1947.69, 10.5906, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2041, 585.678, -1532.08, 14.8649, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2042, 1619.45, 1942.36, 10.5779, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2043, 1626.73, 1942.25, 10.5908, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2044, 1631.22, 1948.15, 10.5855, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2045, 560.703, -1567.61, 15.6851, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2046, 1640.31, 1949.23, 10.5853, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2047, 562.702, -1549.21, 15.1952, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2048, 1640.39, 1940.64, 10.5854, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2049, 1635.51, 1911.75, 10.5849, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2050, 560.229, -1499.58, 14.076, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2051, 1615.86, 1911.87, 10.5981, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2052, 562.541, -1423.17, 14.8191, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2053, 1578.04, 1911.85, 10.595, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2054, 596.293, -1385.44, 13.2293, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2055, 612.731, -1370.26, 13.405, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2056, 1562.21, 1911.61, 10.5963, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2057, 556.561, -1392.08, 14.745, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2058, 534.58, -1389.4, 15.6908, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2059, 1502.58, 1911.51, 10.5903, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2060, 1512.27, 1910.29, 10.3844, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2061, 1530.46, 1910.4, 10.3824, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2062, 1549, 1910.39, 10.3826, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2063, 544.846, -1360.45, 15.0856, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2064, 449.43, -1354.49, 23.8001, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2065, 1567.21, 1936.71, 10.4041, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2066, 411.887, -1420.5, 32.9895, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2067, 420.205, -1430.27, 31.8989, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2068, 426.122, -1439.65, 30.8391, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2069, 1663.25, 1910.42, 10.3866, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2070, 1672.84, 1913.12, 10.3914, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2071, 1692.35, 1921.77, 10.5807, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2072, 1692.31, 1934.12, 10.5785, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2073, 428.014, -1552.72, 27.1495, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2074, 511.653, -1609.65, 16.1521, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2075, 410.482, -1645.23, 28.0525, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2076, 382.829, -1639.09, 32.3555, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2077, 302.392, -1616.26, 33.244, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2078, 289.717, -1598.42, 32.3252, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2079, 279.194, -1596.79, 32.5817, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2080, 246.158, -1591.98, 32.7943, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2081, 1693.76, 1953.42, 10.5868, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2082, 371.289, -1437.23, 33.9875, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2083, 500.55, -1359.51, 15.76, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2084, 549.805, -1362.68, 15.0064, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2085, 593.99, -1353.92, 13.7761, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2086, 1682.05, 1888.81, 10.5937, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2087, 609.524, -1437.19, 13.6458, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2088, 609.653, -1465.23, 14.0451, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2089, 1663.41, 1889.03, 10.5879, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2090, 1644.61, 1889.15, 10.5938, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2091, 616.768, -1606.76, 15.9479, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2092, 1606.09, 1889.03, 10.597, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2093, 589.686, -1604.6, 15.782, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2094, 564.484, -1605.36, 15.8128, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2095, 1587.48, 1889.01, 10.5863, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2096, 556.898, -1655.75, 18.0915, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2097, 1549, 1889.04, 10.5859, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2098, 586.469, -1656.51, 16.3567, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2099, 1530.23, 1889.07, 10.5885, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2100, 1511.57, 1889.1, 10.586, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2101, 656.129, -1646.44, 14.9679, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2102, 656.39, -1652.2, 14.9744, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2103, 649.44, -1701.47, 14.1994, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2104, 646.977, -1710.95, 13.9902, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2105, 1582.55, 1778.99, 10.494, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2106, 1582.88, 1757.67, 10.3926, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2107, 596.843, -1709.38, 13.993, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2108, 1586.61, 1748.91, 10.3895, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2109, 594.212, -1686.71, 15.8027, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2110, 1578.26, 1724.79, 10.3947, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2111, 1589.81, 1732.47, 10.398, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2112, 1610.05, 1724.24, 10.3932, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2113, 500.256, -1574.05, 16.0065, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2114, 1616.93, 1724.61, 10.5265, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2115, 1620.7, 1732.48, 10.3923, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2116, 495.095, -1526.8, 19.3667, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2117, 1636.09, 1724.46, 10.3908, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2118, 495.555, -1481.47, 19.1945, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2119, 1628.7, 1748.67, 10.382, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2120, 516.819, -1483.73, 14.1332, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2121, 1629.54, 1792.04, 10.3958, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2122, 1636.44, 1861.68, 10.3891, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2123, 400.114, -1665.15, 29.7516, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2124, 1584.94, 1856.53, 10.3753, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2125, 1578.64, 1861.94, 10.3859, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2126, 1700.87, 1808.89, 10.3823, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2127, 114.408, -1525.01, 7.16849, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2128, 1743.74, 1803.07, 10.3851, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2129, 45.1895, -1530.51, 4.91134, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2130, 1736.37, 1822.94, 10.3839, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2131, 26.1064, -1527.2, 4.4222, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2132, -0.873047, -1521.45, 2.57622, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2133, -84.6113, -1526.25, 2.33807, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2134, -84.5381, -1526.24, 2.33842, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2135, -138.013, -1471.34, 3.574, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2136, -153.994, -1457.43, 4.20344, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2137, -128.84, -1431.46, 3.07108, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2138, -170.824, -1363.16, 3.1157, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2139, 1698.09, 1724.68, 10.3826, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2140, -120.738, -1313.73, 2.8096, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2141, 1706.15, 1724.64, 10.3983, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2142, -77.1982, -1378.86, 11.3977, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2143, -98.5146, -1427.18, 12.4507, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2144, 1723.12, 1616.01, 9.67812, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2145, -136.288, -1467.6, 12.3698, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2146, 1720.05, 1617.57, 9.66753, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2147, -188.503, -1519.32, 14.1559, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2148, -210.271, -1548.71, 15.2292, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2149, 1711.74, 1619.84, 9.66707, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2150, -273.018, -1646, 15.1767, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2151, 1706.93, 1702.13, 10.3784, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2152, -315.067, -1769.43, 16.0339, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2153, -315.067, -1769.43, 16.0339, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2154, 1640.48, 1633.51, 10.3902, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2155, -381.262, -1940.39, 27.7445, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2156, -359.1, -1951.07, 23.3555, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2157, -334.12, -1966.59, 25.2939, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2158, 1630.67, 1629.6, 10.385, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2159, -308.151, -1986.7, 20.8159, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2160, 1630.67, 1619.9, 10.385, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2161, -305.421, -2045.57, 26.8716, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2162, 1640.52, 1615.95, 10.3822, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2163, -326.635, -2132.83, 30.1058, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2164, -317.335, -2167.2, 30.3476, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2165, -267.118, -2215.02, 28.6109, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2166, 1570.91, 1662.37, 14.8222, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2167, 1576.03, 1665.48, 18.8222, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2168, 1574.98, 1674.09, 18.8222, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2169, -242.267, -2290.66, 28.0919, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2170, 1569.88, 1672.34, 18.8222, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2171, -219.619, -2334.8, 28.6142, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2172, 1563.3, 1671.26, 18.8222, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2173, 1560.58, 1667.99, 18.8222, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2174, 1565.87, 1666.8, 18.8222, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2175, -139.432, -2398.93, 31.9447, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2176, 1592.4, 1662.54, 21.8487, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2177, 1596.1, 1652.69, 22.7005, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2178, 1606.57, 1649.82, 23.9503, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2179, -72.1738, -2456.34, 34.3754, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2180, 1619.25, 1649.82, 23.3157, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2181, 1625.12, 1656.86, 22.1485, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2182, -58.0684, -2473.48, 35.3212, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2183, 1627.78, 1667.42, 21.368, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2184, 1628.34, 1680.59, 21.184, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2185, 1628.45, 1690.85, 21.1483, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2186, 1619.5, 1693.56, 23.2854, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2187, -40.5889, -2497.23, 36.1499, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2188, 1611.57, 1693.86, 23.97, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2189, -32.4863, -2493.24, 36.2156, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2190, 1600.51, 1693.53, 23.448, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2191, 1593.8, 1690.47, 22.2028, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2192, 1590.7, 1680.21, 21.2959, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2193, 1593.77, 1672.89, 22.1952, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2194, 1600.19, 1664.46, 23.4017, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2195, -5.0498, -2558.05, 38.0223, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2196, 1606.74, 1659.26, 23.9564, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2197, 1616.61, 1661.94, 23.6372, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2198, 1620.42, 1672.19, 23.1673, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2199, 1622.37, 1682.89, 22.7446, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2200, 1613.72, 1688.23, 23.891, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2201, -6.88086, -2644.94, 40.532, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2202, 1603.36, 1686.31, 23.7944, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2203, 1600.82, 1676.93, 23.486, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2204, 20.707, -2648.95, 40.0322, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2205, 1606.52, 1670, 23.9485, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2206, -11.1445, -2728.01, 40.7354, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2207, 1575.72, 1680.92, 14.8222, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2208, 1572.45, 1681.3, 14.8222, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2209, 1562.98, 1678.04, 14.8222, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2210, -22.5283, -2830.35, 39.9409, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2211, -126.313, -2857.94, 39.1627, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2212, -267.728, -2841.04, 40.9747, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2213, -444.667, -2825.43, 46.7886, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2214, -545.328, -2806.18, 47.8389, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2215, -588.394, -2779.51, 48.8155, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2216, -710.663, -2804.61, 51.8406, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2217, -850.419, -2860.28, 59.3059, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2218, -930.513, -2859.16, 67.0339, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2219, -989.051, -2842.21, 68.4108, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2220, -1180.61, -2639.09, 11.3237, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2221, -1227.81, -2635.96, 8.99884, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2222, -1305.07, -2631.43, 11.4186, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2223, -1365.79, -2631.57, 26.0408, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2224, -1427.8, -2634.19, 34.4675, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2225, -1493.02, -2634.79, 45.445, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2226, -1567.4, -2631.04, 53.1145, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2227, -1632.05, -2627.99, 50.021, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2228, -1711.86, -2630.63, 47.4519, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2229, 1338.64, 1862.15, 10.3815, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2230, 1314.61, 1802.18, 10.302, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2231, -1805.24, -2581.42, 56.1685, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2232, -1852.36, -2583.85, 59.6969, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2233, -1967.31, -2614.76, 61.2261, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2234, 1342.88, 1662.96, 10.3855, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2235, 1341.89, 1647.13, 10.3983, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2236, 1332.05, 1637.56, 10.3877, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2237, 1331.92, 1649.55, 10.382, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2238, 1332.97, 1658.29, 10.3979, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2239, 1276.86, 1635.05, 10.3964, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2240, 1278.37, 1606.82, 10.3853, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2241, 1280.26, 1585.14, 10.3841, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2243, -1994.58, -2623.73, 60.4687, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2244, -2047.41, -2642.81, 56.772, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2245, -2249.59, -2626.98, 47.6143, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2246, -2338.62, -2548.84, 36.8672, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2247, -2347.01, -2480.52, 27.6665, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2248, -2421.38, -2376.17, 26.3799, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2249, -2376.83, -2279.59, 14.9202, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2250, -2386.3, -2198.74, 32.8558, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2251, -2392.81, -2205.84, 32.8635, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2252, -2246.69, -2127.28, 63.0649, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2253, -2122.45, -1909.12, 113.558, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2255, 1316.7, 1540.56, 10.3857, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2256, 1325.02, 1541.98, 10.3941, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2257, 1333.54, 1541.66, 10.3851, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2258, 1334.28, 1532.37, 10.3959, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2259, 1325.57, 1532.7, 10.3894, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2260, 1315.43, 1531.5, 10.3808, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2261, 1324.53, 1546.35, 14.4456, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2262, 1612.75, 1478.97, 10.3981, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2263, 1325.35, 1537.05, 14.4356, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2264, -2461.88, -2070.99, 130.763, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2265, 1324.47, 1526.62, 14.4482, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2266, 1714.83, 1322.3, 10.3669, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2267, 1278.74, 1504.45, 10.3876, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2268, 1277.58, 1445.76, 10.377, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2269, 1276.92, 1439.87, 10.3823, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2270, 1276.76, 1435.36, 10.3858, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2271, -2467.7, -2067.18, 133.676, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2272, 1673.88, 1545.61, 10.3872, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2273, 1270.11, 1432.58, 14.7453, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2274, 1714.65, 1318.61, 10.3735, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2275, 1305.38, 1262.37, 13.8258, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2276, 1307.15, 1251.99, 13.8284, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2277, 1315.99, 1254.79, 13.8383, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2278, 1321.54, 1254.94, 13.8388, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2279, 1694.75, 1162.14, 10.355, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2280, 1329.96, 1261.33, 13.8127, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2281, 1341.17, 1226.76, 10.3912, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2282, 1738.65, 1218.69, 10.3881, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2283, 1327.12, 1227, 10.392, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2284, 1304.3, 1223.3, 10.3919, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2285, 1281.02, 1229.49, 10.3837, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2286, 1285.05, 1251.46, 10.3874, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2287, 1268.86, 1267.26, 10.3758, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2288, 1848.78, 1261.75, 10.3823, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2289, 1469.8, 1169.48, 10.3835, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2290, 1839.54, 1180.58, 10.5817, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2291, 1485.56, 1173.14, 10.3849, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2292, 1985.16, 1029.5, 10.3617, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2293, 2011.9, 1025, 10.391, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2294, 1645.1, 1332.79, 10.3651, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2295, 2020.55, 999.451, 10.4145, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2296, 1659.91, 1336.77, 10.3566, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2297, 1657.86, 1354.29, 10.3574, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2298, 1623.2, 1387.98, 10.4073, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2299, 2188.96, 1121.29, 12.2179, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2300, 1715.18, 1346, 10.3166, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2301, 2276.41, 1176.75, 10.3857, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2302, 1645.44, 1349.09, 10.3612, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2303, 2314.73, 1152.12, 10.3825, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2304, 1611.55, 1416.49, 10.3901, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2305, 2325.74, 1095.46, 10.3857, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2306, 1604.43, 1437.88, 10.3895, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2307, 1603.92, 1457.5, 10.4019, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2308, 2244.02, 1135.4, 10.3938, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2309, 2262.98, 1124.64, 10.3797, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2310, 1623.62, 1508.14, 10.4481, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2311, 1653.15, 1512.67, 10.3592, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2312, 2360.89, 1167.7, 10.3815, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2313, 1716.31, 1539.29, 10.3239, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2314, -2532.1, -1962.05, 176.964, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2315, 2446.68, 1288.6, 10.3926, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2316, -2632.04, -1804.1, 236.073, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2317, 1715.35, 1589.82, 9.90811, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2318, -2650.54, -1749.3, 252.41, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2319, -2599.16, -1802.62, 263.593, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2320, 2476.71, 1292.97, 10.3802, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2321, 1589.54, 1645.23, 10.386, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2322, -2515.82, -1891.47, 296.276, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2323, 1600.11, 1646.08, 10.3986, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2324, 2477.06, 1264.38, 10.3765, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2325, 1612.97, 1645.92, 10.3959, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2326, 1624.67, 1646.03, 10.3963, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2327, 2496.68, 1215.08, 10.3924, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2328, 1710.92, 1530.7, 10.3363, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2329, 1697.09, 1529.21, 10.3204, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2330, 1690.01, 1524.88, 10.3308, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2331, 1666.06, 1488.71, 10.3358, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2332, 2566.81, 1402.44, 10.6558, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2333, 1663.66, 1480.66, 10.3557, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2334, 1663.16, 1464.44, 10.3451, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2335, 2567.73, 1416.95, 10.628, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2336, 1671.04, 1453.06, 10.3451, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2337, 2567.19, 1443.03, 10.6229, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2338, 1670.9, 1443.08, 10.3488, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2339, 1663.43, 1431.75, 10.3556, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2340, 1662.96, 1415.25, 10.3583, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2341, 2546.19, 1510.75, 10.7934, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2342, 1666.04, 1407.57, 10.3405, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2343, 1687.77, 1367.88, 10.2831, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2344, 2537.05, 1538.88, 10.3901, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2345, 1694.76, 1363.2, 10.31, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2346, 1711.46, 1360.91, 10.3252, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2347, 1697.22, 1396.58, 10.9684, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2348, 1690.71, 1418.29, 11.219, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2349, -2129.73, -2143.29, 52.8295, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2350, 1690, 1471.39, 11.081, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2351, 2482.3, 1763.79, 10.8203, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2352, 1696.12, 1496.58, 11.0679, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2353, -2034.63, -1974.17, 79.2535, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2354, 1751.02, 1475.65, 10.3904, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2355, 2307.11, 1799.82, 10.3813, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2356, 1753.07, 1534.65, 10.3906, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2357, -1933.7, -1771.14, 26.358, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2358, 1752.91, 1559.46, 10.3847, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2359, 1750.76, 1564.9, 10.3749, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2360, -1861.73, -1722.65, 21.3148, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2361, -1912.38, -1671.08, 22.572, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2362, 1753.56, 1432.75, 10.3847, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2363, 2226.11, 1833.56, 10.3879, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2364, 1752.02, 1429.15, 10.379, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2365, 1755.6, 1425.73, 10.3799, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2366, 2226.15, 1844.14, 10.3893, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2367, -1852.66, -1609.62, 21.3242, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2368, 1752.95, 1405.92, 10.3897, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2369, 1752.38, 1399.62, 10.3689, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2370, 2280.9, 1861.63, 10.3815, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2371, 2285.26, 1867.12, 10.3791, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2372, 1715.46, 1313.54, 10.3829, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2373, 2300.92, 1868.64, 10.3855, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2374, 1768.86, 1266.31, 8.86261, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2375, -1709.31, -1656.57, 35.8274, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2376, 1769.09, 1273.22, 8.81097, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2377, 1768.67, 1282.11, 8.92607, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2378, -1581.93, -1605.9, 36.2799, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2379, 1826.3, 1281.29, 8.99016, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2380, 1826.15, 1275.17, 8.94856, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2381, 1825.87, 1266.88, 8.87311, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2382, 2245.81, 1971.03, 9.66542, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2383, -1750.1, -1464.27, 34.0109, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2384, 2279.36, 1956.71, 20.6127, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2385, 2298.67, 1902.54, 25.9844, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2386, 2251.38, 1902.68, 28.5346, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2387, -1894.85, -982.144, 40.8118, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2388, -1860.11, -406.898, 33.0199, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2389, -2090.8, -329.397, 34.8729, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2390, -2204.72, -258.329, 34.9505, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2391, -2243.59, -177.068, 34.8801, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2392, -2244.55, -47.96, 34.8853, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2393, -2233.12, 17.9961, 34.8962, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2394, -2216.76, 6.67383, 35.2242, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2395, -2208.48, -20.8604, 34.8772, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2396, -2196.17, 38.0186, 34.8862, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2397, 2536.46, 2027.66, 11.1719, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2398, -2121.04, 128.529, 34.8104, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2399, -2111.9, 239.375, 34.9292, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2400, 2621.06, 2035.91, 10.3848, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2401, -2057.49, 218.056, 35.1105, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2402, 2641.67, 2029.65, 10.4838, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2403, -2063.05, 251.569, 34.8583, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2404, 2659.55, 1966.72, 10.5833, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2405, -2059.5, 254.545, 36.8865, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2406, 2620.6, 1966.11, 10.5797, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2407, -2046.5, 306.362, 40.0124, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2408, -1964.95, 284.843, 35.4739, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2409, -1951.18, 283.104, 35.4688, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2410, 2931.59, 2100.08, 13.1869, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2411, -1944.64, 268.561, 40.6217, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2412, 2811.17, 2101.94, 10.3867, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2413, -1951.53, 302.308, 40.5984, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2414, 2703.48, 2662.92, 10.3767, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2415, -1948.71, 264.796, 35.0325, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2416, -1992.68, 244.874, 34.7304, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2417, -1922.67, 241.647, 40.6125, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2418, 2856.11, 2640.86, 10.383, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2419, -1940.36, 275.591, 40.6029, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2420, -1910.34, 307.776, 40.6057, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2421, 2742.85, 2639.91, 10.3774, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2422, -1895.41, 220.579, 38.5296, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2423, 2812.71, 2587.34, 9.59621, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2424, -1917.39, -111.952, 37.812, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2425, -2360.03, -169.523, 34.8819, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2426, -2390.73, -45.5156, 34.8789, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2427, -2434.29, 32.7383, 34.5301, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2428, 2549.64, 2852.97, 10.3826, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2429, -2483.98, 49.832, 27.042, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2430, 2545.88, 2825.3, 10.8203, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2431, 2549.59, 2836.67, 14.2559, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2432, -2568.32, 119.132, 12.8129, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2433, -2596.87, 141.599, 3.89157, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2434, 2550.78, 2811.27, 16.702, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2435, -2613.96, 169.438, 3.88893, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2436, -2642.91, 256.054, 3.74454, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2437, -2577.87, 299.804, 7.08734, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2438, -2554.74, 299.567, 15.6516, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2439, -2524.67, 362.617, 22.6879, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2440, -2486.63, 388.11, 31.8633, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2441, -2518.82, 553.095, 14.1973, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2442, -2453.59, 590.192, 23.8782, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2443, -2455.52, 503.819, 29.632, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2444, -2446.27, 525.029, 29.7671, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2445, -2427.84, 531.257, 29.6441, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2446, 2396.38, 2725.12, 10.377, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2447, -2487.32, 476.344, 27.9979, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2448, 2390.44, 2759.29, 10.3649, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2449, -2555.93, 416.239, 18.605, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2450, 2321.79, 2822.54, 10.3734, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2451, -2588.18, 375.746, 9.39835, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2452, -2632.84, 309.28, 3.9204, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2453, -2666.06, 206.437, 3.9013, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2454, 1992.48, 2762.78, 10.8203, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2455, -2695.43, 196.663, 3.90217, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2456, -2689.18, 170.943, 3.90273, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2457, -2677.21, 169.088, 3.90526, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2458, -2667.86, 169.184, 3.9044, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2459, 1952.8, 2759.59, 10.3923, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2460, -2659.41, 169.194, 3.8898, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2461, -2652.23, 169.203, 3.90694, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2462, -2652.23, 169.203, 3.90694, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2463, 1728.65, -505.326, 39.0062, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2464, -2651.85, 130.07, 3.74915, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2465, 1793.15, 2743.05, 10.9032, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2466, -2649.61, 123.213, 3.90663, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2467, 1830.45, 2743.87, 10.928, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2468, -2660.03, 125.468, 3.97893, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2469, 1815.71, 2821.13, 10.9073, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2470, -2648.11, 112.139, 3.90159, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2471, 1818.16, 2831.81, 13.8391, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2472, -2657.84, 105.272, 3.93985, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2473, 1895.49, 177.186, 36.3474, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2474, 1900.79, 169.814, 36.7136, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2475, -2649.37, 94.4766, 3.90097, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2476, -2659.45, 94.1416, 3.96479, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2477, 1776.93, 2796.15, 10.8359, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2478, 1945.84, 154.727, 36.5627, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2479, 1944.37, 148.486, 36.672, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2480, -2658.64, 76.3584, 3.90034, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2481, 1981.48, 159.099, 33.1288, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2482, -2646.2, 64.0791, 3.90324, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2483, 1658.27, 2753.12, 10.3892, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2484, -2647.56, 74.6318, 3.90464, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2485, 1650.63, 2767.94, 10.3808, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2486, 2182.33, 92.8379, 25.0869, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2487, -2647.75, 55.3311, 3.9014, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2488, 2182.73, 100.595, 26.0301, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2489, 2182.61, 111.787, 26.0094, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2490, -2658.42, 56.5957, 3.90758, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2491, 2185.2, 118.235, 25.9603, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2492, 2194.09, 118.286, 26.0621, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2493, 2203.85, 118.577, 26.0752, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2494, 1660.35, 2796.25, 10.3917, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2495, -2641.99, 13.1152, 5.70254, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2496, -2636.25, -23.6201, 5.69831, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2497, 2196.66, 103.136, 27.6323, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2498, 2196.63, 115.301, 27.6152, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2499, 1488.65, 2772.79, 10.3825, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2500, 2184.92, 93.1758, 27.3995, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2501, 1457.12, 2773.9, 10.3843, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2502, -2717.89, -12.1309, 3.91057, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2503, 2184.67, 115.341, 27.4072, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2504, -2722.91, -16.7598, 6.75318, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2505, -2724, -34.3359, 3.39014, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2506, 1432.03, 2644.29, 11.0044, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2507, -2723.43, -37.0889, 5.74757, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2508, 2206.39, 75.7061, 26.8267, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2509, -2726.78, -50.8584, 6.33362, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2510, -2722.96, -57.9404, 3.90891, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2511, 2242.66, 52.6797, 26.2172, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2512, 2249.59, 53.1592, 26.2287, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2513, -2673.6, -54.3633, 3.90355, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2514, 2273.54, 65.8691, 26.0534, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2515, 1225.09, 2601.69, 10.3795, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2516, -2723.26, -92.7598, 5.65509, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2517, 1205.52, 2616.63, 10.376, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2518, 2304.66, 75.8086, 26.0437, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2519, -2725.91, -98.7627, 5.82444, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2520, 2315.42, 61.6699, 26.0417, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2521, -2722.66, -105.491, 3.91647, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2522, 2326.54, 59.4248, 26.5259, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2523, -2687.49, -96.1191, 5.30158, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2524, 2326.67, 63.7871, 26.0335, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2525, -91.1328, -1576.45, 2.61719, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(2526, -2716.78, -130.493, 3.91195, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2527, 2324.64, 76.2314, 26.0583, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2528, 2318.53, 75.9883, 26.0481, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2529, 1335.44, 2526.15, 10.3868, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2530, 2321.47, 44.541, 26.0537, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2531, -66.3975, -1545.18, 5.59759, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(2532, -2723.44, -162.698, 3.906, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2533, -2724.01, -162.813, 3.90487, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2535, 2315.55, 36.5908, 26.0486, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2536, 1335.58, 2573.14, 10.386, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2537, 2315.43, 33.6709, 27.0338, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2538, 1356.03, 2560.57, 10.3842, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2539, -2690.91, -169.253, 3.89947, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2540, 1363.13, 2525.49, 10.3904, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2541, 2317.39, 11.7959, 26.063, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2542, -2723.14, -175.528, 5.24363, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2543, 2323.43, -3.35547, 26.5632, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2544, -2689.12, -188.422, 5.7807, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2545, 1427.95, 2568.38, 10.8203, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2546, -2695.68, -193.963, 3.89965, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2547, 2332.62, -4.32812, 26.1294, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2548, 1429.28, 2547.61, 10.8203, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2549, 1444.83, 2546.91, 10.8203, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2550, -2723.99, -191.269, 3.90303, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2551, 2329.53, 8.3418, 26.52, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2552, 2332.34, 8.46387, 26.5001, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2553, -2678.25, -223.821, 4.34576, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2554, 1458.91, 2548.03, 10.3912, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2555, -2726.43, -280.304, 6.60762, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2556, 1449.88, 2548.44, 10.3976, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2557, -344.666, -1934.42, 22.3569, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(2558, 1448.04, 2550.55, 10.3877, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2559, 1448.39, 2563.73, 10.394, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2560, 2310.79, -5.49805, 26.7422, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2561, -2756.44, -259.485, 6.74197, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2562, 2306.18, -5.97168, 26.7422, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2563, -376.199, -1933.84, 25.4067, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(2564, -2755.49, -240.901, 6.74491, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2565, 2305.8, -0.526367, 26.7422, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2566, -2769.39, -241.101, 6.75704, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2567, 1513.43, 2567.15, 10.3966, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2568, 2311.99, -11.0137, 26.7422, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2569, 1510.52, 2558.79, 10.3827, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2570, -2773.8, -241.671, 6.74822, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2571, 2306.93, -13.334, 26.7422, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2572, 1513.24, 2546.71, 10.8203, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2573, -2787.29, -241.539, 6.75924, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2574, 2317.17, -17.3213, 26.7422, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2575, -2787.85, -262.492, 6.76007, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2576, -2773.73, -261.824, 6.75559, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2577, -2770.45, -262.318, 6.75152, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2578, -2748.71, -262.896, 6.7529, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2579, 1553.77, 2555.15, 10.3781, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2580, -2736.1, -262.906, 6.75567, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2581, -2730.78, -262.825, 6.75509, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2582, 1596.49, 2569.28, 10.3769, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2583, -2716.49, -262.757, 6.76043, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2584, -2717.52, -242.082, 6.75738, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2585, 2331.67, 42, 32.9884, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2586, 1647.34, 2572.43, 10.8203, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2587, 2331.59, 55.1172, 32.9884, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2588, -2729.78, -242.599, 6.75404, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2589, 2329.51, 62.1035, 32.0074, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2590, -2735.01, -241.599, 6.75282, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2591, -325.597, -1776.71, 14.4984, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(2592, -297.81, -1777.04, 13.041, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(2593, -2747.58, -242.012, 6.75458, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2594, 1682.36, 2574.34, 10.3186, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2595, 1681.89, 2566.59, 10.3032, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2596, 1681.83, 2561.21, 10.3138, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2597, -2779.65, -345.089, 7.34579, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2598, -2784.14, -344.504, 7.35327, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2599, 1804.84, 2623.95, 10.4688, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2600, 2272.27, 182.42, 25.9901, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2601, 1838.48, 2619.78, 10.5849, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2602, 1848.55, 2619.24, 10.5894, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2603, 1855.99, 2614.22, 10.5817, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2604, -2790.09, -175.476, 7.9639, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2605, 2287.19, 161.28, 28.4416, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2606, 2281.42, 161.246, 28.4416, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2607, 1720.98, 2567.57, 10.3006, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2608, -2796.8, -158.483, 7.29191, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2609, 1677.87, 2414.71, 10.3212, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2610, 2268.85, 167.407, 28.1536, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2611, -264.544, -2182.11, 28.9365, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(2612, 2258.27, 167.994, 28.1536, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2613, -257.973, -2182.44, 29.026, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(2614, 1773.93, 2165.72, 6.01699, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2615, 2247.58, 186.409, 27.0487, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2616, -2796.29, -117.264, 6.76024, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2617, -258.559, -2199.54, 33.0877, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(2618, 2270.04, 188.404, 27.0404, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2619, -257.902, -2206.56, 32.0669, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(2620, 1775.1, 2055.4, 5.28467, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2621, -263.172, -2202.46, 32.0748, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(2622, 2257.93, 176.689, 28.154, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2623, -2752.47, -56.2842, 6.75949, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2624, 2257.8, 184.815, 28.154, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2625, -2753.03, -46.7402, 6.7423, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2626, -2764.5, -43.2334, 6.76923, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2627, -236.095, -2258.75, 28.6686, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(2628, 2235.79, 168.053, 28.1535, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2629, -220.354, -2278.96, 28.8555, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(2630, 2239.21, 168.34, 28.1535, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2631, -2767.83, 23.5283, 6.75346, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2632, 2245.48, 169.267, 27.444, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2633, 2245.43, 170.729, 27.4765, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2634, -189.765, -2323.16, 30.6042, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(2635, -2773.25, 53.0479, 6.76206, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2636, -196.423, -2323.21, 31.2507, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(2637, 2245.41, 188.519, 27.4766, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2638, 2236.16, 176.517, 28.154, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2639, 2236.09, 184.652, 28.154, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2640, -2779.21, 172.73, 8.04279, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2641, 2222.63, 188.52, 27.4766, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2642, -272.362, -2273.95, 29.837, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(2643, 2222.22, 170.761, 27.4859, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2644, -276.558, -2271.81, 30.1066, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(2645, 2222.32, 169.239, 27.4497, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2646, 2222.36, 154.14, 26.6459, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2647, 1999.52, 1522.08, 16.6338, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2648, 2002.99, 1535.89, 14.1962, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2649, 1975.21, 1434.86, 10.3668, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2650, 1974.13, 1408.79, 8.82105, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2651, 1883.41, 1401.68, 8.80648, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2652, 1882.27, 1385.21, 8.82186, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2653, -22.7832, -2574.37, 38.8421, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(2654, -24.1055, -2577.23, 39.7393, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(2655, -2792.01, 143.167, 10.0547, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2656, 1864.39, 1367.29, 16.5046, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2657, -2792.16, 130.38, 7.377, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2658, 1855.38, 1360.83, 16.4861, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2659, -2791.34, 126.841, 7.20195, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2660, 1843.95, 1289.66, 16.4942, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2661, -2787.65, 120.427, 9.36015, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2662, 1859.75, 1291.41, 16.489, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2663, 1910.62, 1295.14, 16.49, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2664, 2250.94, 111.688, 28.4416, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2665, 1920.03, 1332.17, 15.8435, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2666, -2792.32, 91.9756, 7.30169, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2667, 2267.99, 111.553, 28.4416, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2668, -65.0547, -2652.39, 81.6822, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(2669, 1949.63, 1335.98, 15.401, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2670, -82.998, -2621, 78.591, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(2671, -2791.3, 69.498, 6.7635, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2672, -2787.79, 63.3955, 9.42589, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2673, -72.9424, -2663.92, 80.6932, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(2674, 2252.83, 80.6445, 26.2252, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2675, 2235.34, 80.3184, 26.2805, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2676, -2796.25, 24.0176, 6.7657, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2677, 1931.75, 1341.56, 9.53585, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2678, 2203.96, 107.439, 28.4416, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2679, -2790.94, 6.8291, 6.76001, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2680, 2021.13, 1440.46, 10.3821, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2681, 2203.85, 100.108, 28.4416, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2682, 2024.65, 1300.35, 10.3809, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2683, -2791.83, -24.1191, 10.4742, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2684, 1988.91, 1240.75, 10.3795, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2685, 2003.57, 1239.61, 10.382, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2686, 2204.3, 60.9072, 28.0047, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2687, 2008.65, 1222.5, 10.3921, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2688, -2790.16, -52.8779, 9.31128, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2689, 2018.35, 1192.62, 10.3788, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2690, 2203.83, 75.6484, 28.448, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2691, 2008.65, 1171.19, 10.3859, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2692, 2007.05, 1163.33, 10.3893, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2693, 2186.68, 75.5312, 27.9201, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2694, 2184.96, 53.3555, 27.8438, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2695, 2018.42, 1142.81, 10.3863, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2696, 2196.43, 52.7334, 27.8438, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2697, 2018.64, 1112.51, 10.3842, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2698, 2000.04, 1102.36, 10.3873, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2699, 1983.2, 1101.9, 10.3827, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2700, 1946, 1101.81, 10.3835, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2701, 1856.38, 1098.37, 10.3845, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2702, 1856.42, 1116.47, 10.3848, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2703, 2303.61, 42.8096, 26.049, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2704, 2304.28, 40.7793, 26.0656, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2705, 2303.97, 21.1387, 26.0598, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2706, 2304.29, 14.292, 26.0489, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2707, 2312.21, 6.89062, 26.0488, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2708, -2791.51, -82.5576, 6.76645, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2709, -472.942, -2659.12, 156.874, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(2710, -481.141, -2656.72, 157.049, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(2711, -486.849, -2653.88, 156.119, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(2712, -2788.09, -89.6641, 9.29216, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern');
INSERT INTO `ostereier` (`ID`, `X`, `Y`, `Z`, `Inte`, `Dim`, `State`, `gefundenVon`, `comment`, `event`) VALUES
(2713, -495.472, -2677.21, 154.909, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(2714, 2275.06, -69.4258, 26.5315, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2715, 1797.41, 824.712, 10.2038, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2716, -504.603, -2688.37, 151.203, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(2717, 2268.73, -66.2305, 26.3605, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2718, -517.419, -2700.86, 146.221, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(2719, -2792.11, -95.4258, 9.7132, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2720, 2257.83, -66.2793, 26.3621, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2721, 2253.64, -66.5615, 26.359, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2722, 2248.2, -68.7773, 26.3557, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2723, 2267.2, -77.0068, 24.5859, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2724, -2721.89, -174.211, 4.24166, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2725, 1960.67, 749.707, 10.3919, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2726, -434.271, -2704.08, 170.294, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(2727, -2717.88, -149.744, 3.9121, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2728, 1959.63, 744.638, 10.391, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2729, -2718.29, -52.4365, 3.90205, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2730, 1980.27, 713.793, 10.4064, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2731, 1958.59, 712.394, 14.5665, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2732, 1956.68, 734.552, 13.8548, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2733, -2717.82, -40.9365, 3.89755, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2734, 1918.28, 742.302, 13.7273, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2735, 1898.91, 740.505, 13.8133, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2736, 1899.05, 725.296, 13.7922, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2737, 1898.44, 720.838, 13.8569, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2738, 1897.9, 667.698, 10.3866, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2739, -2677.3, 12.3369, 3.89138, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2740, 1908.33, 665.476, 10.386, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2741, 1924.32, 665.292, 10.3936, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2742, 1937.3, 664.334, 10.3958, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2743, 1954.57, 669.055, 10.3858, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2744, 1956.6, 680.119, 10.3832, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2745, 1956.94, 687.644, 10.3945, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2746, 1955.63, 702.102, 10.3923, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2747, 1955.63, 721.358, 10.386, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2748, 1955.33, 735.042, 10.3858, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2749, -2632.36, 50.7314, 3.88909, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2750, 1951.59, 740.762, 10.3944, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2751, 1943.39, 740.377, 10.3923, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2752, 1937.43, 741.147, 10.3896, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2753, 1923.46, 741.526, 10.3851, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2754, 1908.54, 741.776, 10.3897, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2755, 1900.31, 739.056, 10.3938, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2756, 1899.76, 727.312, 10.3913, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2757, -2658.4, 63.5977, 3.90413, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2758, 1874.84, 728.802, 10.3978, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2759, 1876.58, 746.771, 10.3916, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2760, 1856.45, 738.301, 10.466, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2761, 1843.95, 734.347, 11.0364, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2762, 1836.52, 730.882, 10.9261, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2763, 1831.47, 739.038, 11.0359, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2764, 1830.33, 745.01, 11.0348, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2765, 1847.23, 755.236, 10.929, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2766, -2767.92, 87.3916, 7.18368, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2767, 1842.89, 726.778, 11.0312, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2768, 1834.55, 729.461, 10.9788, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2769, 1830.86, 728.24, 10.9881, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2770, 1828.63, 712.555, 10.5781, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2771, 1833.04, 704.715, 10.6801, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2772, 1842.28, 704.431, 10.6104, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2773, 1848.38, 705.564, 10.828, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2774, -1808.1, -2721.69, 3.34293, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(2775, -2768.66, 95.1689, 6.75911, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2776, 1852.49, 701.546, 10.7435, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2777, 1837.69, 702.308, 10.9384, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2778, 1828.3, 698.494, 10.9121, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2779, 1829.34, 688.597, 10.9216, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2780, 1826.71, 671.608, 11.2823, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2781, 1823.79, 660.945, 10.3919, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2782, -2768.67, 104.937, 6.75414, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2783, 1829.59, 646.541, 10.3665, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2784, 2197.34, -51.834, 26.9561, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2785, 1885.53, 637.688, 10.2365, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2786, -1944.9, -2755.31, 10.8012, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(2787, -2765.55, 113.526, 6.74957, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2788, 1979.08, 662.042, 10.3873, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2789, -2009.43, -2773.24, 8.01292, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(2790, 2198.34, -58.2402, 28.1535, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2791, 2011.16, 652.481, 11.0211, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2792, -2763.53, 125.228, 6.74516, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2793, -2015.42, -2771.54, 7.96679, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(2794, 2197.59, -62.9404, 27.4838, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2795, 2016.63, 654.854, 10.9154, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2796, 2030.37, 655.703, 10.8711, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2797, 2036.93, 655.647, 10.8936, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2798, 2195.23, -74.3887, 27.489, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2799, -2765.45, 134.035, 6.75266, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2800, 2178.97, -74.7676, 27.4766, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2801, -2085.58, -2779.24, 11.9285, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(2802, -2121.16, -2784.2, 10.3073, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(2803, 2177.09, -51.9336, 27.4766, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2804, 2058.25, 648.059, 11.0349, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2805, -2762.41, 141.252, 6.74916, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2806, 2055.17, 640.168, 10.9715, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2807, 2192.63, -51.751, 27.479, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2808, 2057.37, 636.635, 11.0244, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2809, 2069.54, 634.959, 10.6589, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2810, 2189.24, -57.6396, 27.4766, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2811, 2080.02, 641.129, 10.6211, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2812, 2079.24, 649.795, 10.8114, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2813, -2217.11, -2796.38, 8.69797, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(2814, 2189.12, -61.2588, 28.154, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2815, 2181, -61.376, 28.154, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2816, 2094.03, 652.865, 11.0219, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2817, 2100.69, 654.492, 10.9238, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2818, -2791.66, 213.056, 9.61241, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2819, -2372.31, -2733.48, 13.2477, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(2820, 2196.28, -75.1533, 27.4542, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2821, 2106.4, 649.64, 10.9313, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2822, 2105.85, 640.662, 10.9316, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2823, 2103.67, 636.047, 10.971, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2824, 2093.31, 634.415, 10.9337, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2825, -2429.66, -2719.09, 7.77156, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(2826, -2434.62, -2716.84, 9.00143, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(2827, -2792.27, 218.525, 7.22405, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2828, 2158.84, 679.024, 10.3948, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2829, 2163.17, 694.882, 10.3583, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2830, 2165.02, 689.021, 10.9412, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2831, 2234.61, -39.9189, 26.4869, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2832, 2165.97, 680.25, 11.0313, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2833, 2171.99, 675.763, 10.9327, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2834, -2531.55, -2692.72, 15.2681, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(2835, 2181.03, 676.89, 11.0379, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2836, 2193, 676.779, 10.9099, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2837, 2199.82, 676.709, 11.0274, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2838, 2211.38, 678.932, 11.0349, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2839, 2216.36, 683.728, 11.0178, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2840, 2216.07, 692.435, 11.0328, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2841, 2254.5, -46.3398, 26.4844, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2842, -2590.72, -2527.97, 3.32331, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(2843, 2244.53, 692.486, 10.9542, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2844, 2244.74, 685.697, 10.9198, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2845, 2247.1, 677.662, 11.02, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2846, 2256.98, 676.129, 10.9084, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2847, 2262.41, 675.889, 10.9165, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2848, 2268.96, 678.026, 10.9348, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2849, 2269.23, 685.994, 10.9102, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2850, 2267.86, 696.577, 10.7846, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2851, 2259.83, 699.619, 10.6541, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2852, -2619.31, -2466.2, 3.86724, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(2853, -2728.97, 356.619, 4.2761, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2854, -2682.49, 355.074, 4.25813, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2855, 2317.68, 640.346, 10.3826, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2856, 2328.72, 642.383, 10.3901, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2857, 2346.69, 642.562, 10.3962, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2858, 2374.12, 641.838, 10.3862, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2859, 2396.31, 641.253, 10.3848, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2860, -2687.63, 398.779, 4.23291, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2861, 2418.85, 646.029, 10.3786, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2862, 2414.63, 687.488, 10.3855, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2863, 2433.33, 738.581, 10.3559, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2864, -2638.48, -2183.63, 1.4078, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(2865, 2434.66, 749.311, 10.3861, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2866, -2638.31, -2185.64, 1.97956, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(2867, 2468.34, 755.58, 10.3873, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2868, 2468.49, 742.526, 10.3885, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2869, 2468.56, 722.897, 10.3842, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2870, 2468.39, 711.874, 10.3837, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2871, 2468.16, 696.65, 10.3813, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2872, 2467.83, 674.51, 10.3963, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2873, 2467.8, 657.87, 10.3966, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2874, -2707.93, 374.106, 8.97945, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2875, 2456.55, 642.675, 10.3495, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2876, 2236.7, -62.1445, 26.4766, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2877, -2704.59, 374.087, 9.97945, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2878, 2245.34, -64.3447, 26.5335, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2879, -2704.46, 378.123, 10.9795, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2880, 2237.04, -64.9355, 26.4844, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2881, 2235.23, -85.4658, 26.4882, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2882, -2527.73, -2256.17, 25.7181, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(2883, 2244.66, -87.1113, 26.4938, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2884, -2499.74, -2252.83, 25.7426, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(2885, 2413.36, 739.076, 10.386, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2886, 2274.95, -61.9297, 26.4948, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2887, -2476.99, -2336.62, 24.8539, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(2888, 2276.69, -48.7959, 26.5336, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2889, -2501.35, -2342.26, 25.6526, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(2890, 2276.72, -52.5615, 26.5569, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2891, 2537.83, 802.418, 10.3808, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2892, 2585.94, 750.165, 10.5905, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2893, 2258.62, -46.0107, 26.4844, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2894, 2566.58, 752.625, 10.5867, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2895, 2550.76, 752.536, 10.6003, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2896, 2528.71, 745.699, 10.3901, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2897, 2518.63, 751.862, 10.3858, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2898, 2520.57, 759.348, 10.5871, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2899, 2537.83, 760.63, 10.5846, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2900, 2552.61, 721.951, 10.611, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2901, 2562.39, 707.216, 10.5897, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2902, 2579.72, 705.655, 10.4156, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2903, 2596.05, 711.711, 10.5889, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2904, 2573.18, 746.905, 13.8722, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2905, 2565.4, 748.799, 13.8722, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2906, 2200.96, -42.2188, 28.1535, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2907, 2552.19, 749.308, 13.8722, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2908, 2200.83, -35.4268, 27.4766, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2909, 2197.25, -27.3203, 27.4766, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2910, 2190.35, -27.6094, 27.4766, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2911, 2584.28, 742.224, 16.9156, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2912, 2185.14, -27.0967, 27.4688, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2913, 2587.84, 747.174, 19.3472, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2914, 2178.72, -27.4492, 27.4766, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2915, 2594.5, 748.029, 19.7673, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2916, 2180.24, -32.0596, 27.4688, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2917, 2606.61, 747.945, 19.7264, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2918, 2183.24, -37.6963, 28.154, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2919, 2190.5, -37.1484, 28.154, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2920, 2191.52, -39.4561, 27.4766, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2921, 2591.74, 754.099, 10.3908, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2922, 2177.7, -48.6738, 27.4766, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2923, 2636.68, 763.559, 10.401, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2924, -2711.64, -1922.77, 106.469, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(2925, 2626.83, 759.354, 10.5876, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2926, 2682.07, 680.424, 10.3832, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2927, -2707.14, -1891.86, 127.186, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(2928, 2586.48, 700.614, 10.386, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2929, -2713.71, -1912.78, 95.0412, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(2930, 2532.1, 701.355, 10.387, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2931, 2514.81, 752.164, 10.389, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2932, -2706.63, -1934.67, 82.0293, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(2933, 2548.6, 810.976, 10.7478, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2934, 2255.82, -2.27539, 28.1536, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2935, 2235.3, 17.9736, 27.4766, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2936, 2559.94, 832.447, 10.1299, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2937, 2551.15, 843.422, 7.27452, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2938, 2545.59, 839.108, 7.80287, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2939, 2245.3, 6.92383, 28.154, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2940, 2245.22, 12.874, 28.154, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2941, 2538.69, 886.838, 7.24853, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2942, 2247.16, 7.51172, 27.4766, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2943, 2550.37, 896.902, 8.66366, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2944, -2708.05, 378.006, 11.9795, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2945, 2713.54, 917.154, 10.4529, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2946, -2794.85, -1887.1, 119.744, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(2947, -2692.4, 384.382, 6.82689, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2948, 2714.32, 847.565, 10.4644, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2949, -2813.74, -1862.11, 122.791, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(2950, 2268.43, -8.55078, 27.4766, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2951, 2592.13, 795.124, 10.5122, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2952, 2259.93, -3.57715, 27.4132, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2953, 2260.22, 1.61719, 27.4688, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2954, 2260.28, 6.84082, 27.4766, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2955, 2259.57, 17.0928, 27.4766, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2956, 2571.87, 802.662, 10.5205, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2957, -2765.15, 378.898, 5.91168, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2958, 2270.62, 1.3877, 28.1535, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2959, 2270.14, 8.05273, 28.1535, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2960, -2805.63, -1807.48, 138.634, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(2961, -2800.84, -1810.13, 138.07, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(2962, -2799.41, -1815.36, 137.163, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(2963, -2751.69, 434.277, 3.89859, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2964, -2796.85, -1820.47, 136.247, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(2965, -2796.23, -1829.84, 134.097, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(2966, 2283.01, 10.248, 27.4766, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2967, 2566.3, 785.126, 10.5197, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2968, -2792.35, -1840.8, 135.047, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(2969, 2283, 15.9014, 27.4688, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2970, -2787.3, -1845.43, 137.006, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(2971, -2783.52, -1847.92, 136.736, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(2972, 2281.56, 18.5215, 27.4766, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2973, -2776.86, -1849.83, 138.165, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(2974, 2278.37, 18.5205, 27.4766, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(2975, -2774.18, -1845.41, 139.685, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(2976, -2876.56, 360.387, 10.5697, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2977, -2781, -1822.68, 138.288, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(2978, -2781.97, -1817.39, 138.145, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(2979, 2669.87, 786.309, 10.521, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2980, -2781.35, -1806.08, 138.871, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(2981, -2779.95, -1797.69, 139.77, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(2982, 2711.72, 783.703, 10.4536, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2983, -2862.73, 279.697, 8.49016, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2984, -2788.02, -1786.49, 141.117, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(2985, -2831.26, 182.657, 9.92482, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2986, 2715.3, 860.953, 10.464, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2987, 2713.54, 879.716, 10.4826, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2988, 2715.48, 898.641, 10.4616, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2989, 2715.48, 912.758, 10.4784, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2990, 2702.73, 913.746, 10.4424, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2991, 2687.02, 912.574, 10.4088, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2992, -2681.99, 142.585, 3.90239, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2993, 2674.4, 906.569, 10.2913, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2994, 2665.44, 897.087, 10.1598, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2995, -2627.62, 167.844, 4.61166, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(2996, 2647.41, 794.694, 4.89124, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(2997, -2795.28, -1685.67, 141.952, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(2998, -2796.41, -1699.27, 141.984, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(2999, 2653.49, 784.345, 4.87883, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3000, 2646.9, 785.003, 4.8873, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3001, 2627.65, 785.876, 4.89187, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3002, 2597.71, 785.111, 4.8798, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3003, 2574.18, 785.724, 4.88753, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3004, 2559.71, 802.51, 4.87957, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3005, 2374.04, 72.9043, 28.4416, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(3006, 2561.75, 820.044, 4.88185, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3007, 2374.37, 65.5898, 28.4416, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(3008, 2597.67, 818.798, 4.88292, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3009, 2622.63, 813.639, 4.88169, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3010, -2812.29, -1530.02, 140.844, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3011, -2819.63, -1530.7, 140.844, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3012, -2820.54, -1518.01, 140.844, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3013, -2814.28, -1515.53, 140.844, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3014, -2640.22, 168.717, 6.60756, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3015, 2355.71, 58.3457, 27.8076, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(3016, 2718.55, 767.663, 10.3434, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3017, 2354.91, 79.8691, 27.8423, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(3018, -2490.59, 154.632, 8.31467, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3019, -2485.12, 190.705, 16.517, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3020, 2373.98, 40.4678, 28.4416, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(3021, -2429.52, 245.472, 34.3656, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3022, 2374.41, 54.9258, 28.448, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(3023, 2737.03, 842.235, 10.4657, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3024, 2743.04, 873.088, 10.4347, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3025, 2357.84, 55.0371, 27.9512, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(3026, -2427.94, 332.853, 36.5651, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3027, 2355.46, 33.5195, 27.8438, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(3028, 2795.65, 879.824, 10.3148, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3029, -2425.26, 337.081, 36.5715, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3030, 2800.2, 872.28, 10.3135, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3031, -2422.24, 341.941, 36.5668, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3032, 2799.5, 868.479, 14.2559, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3033, 2374.03, 23.5586, 28.4416, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(3034, 2374.82, 20.6934, 28.4416, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(3035, 2797.48, 866.159, 17.6896, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3036, -2347.11, 480.689, 30.4825, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3037, 2355.26, 8.58398, 27.8201, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(3038, -2586.45, -1134.82, 155.15, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3039, 2355.03, 30.9561, 27.8393, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(3040, -2602.63, -1131.91, 131.629, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3041, 2805.01, 856.69, 10.3226, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3042, -2612.31, -1130.05, 116.775, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3043, -2291.86, 582.694, 34.7358, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3044, 2841.75, 857.08, 10.3275, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3045, -2612.39, -1098.65, 90.0778, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3046, 2873.78, 856.337, 10.3057, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3047, 2374.97, -10.4043, 28.4416, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(3048, 2374.4, -8.01172, 28.4416, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(3049, -2227.09, 605.99, 34.6615, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3050, -2583.23, -1095.94, 122.058, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3051, -2212.83, 618.185, 34.7195, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3052, 2886.85, 884.646, 10.3192, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3053, 2371.63, -12.2783, 27.8438, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(3054, -2549.71, -1076.63, 133.791, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3055, 2355.22, -17.5566, 27.8379, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(3056, 2883.62, 940.783, 10.3161, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3057, -2523.98, -1031.85, 103.305, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3058, 2354.81, 5.15527, 27.8389, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(3059, 2889.45, 953.196, 10.3233, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3060, -2186.18, 603.008, 34.7296, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3061, -2498.8, -1015.63, 98.3523, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3062, -2180.25, 602.955, 34.7339, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3063, -2429.61, -1007.91, 92.6445, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3064, -2415.46, -1009.63, 90.7896, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3065, -2393.95, -1032.06, 89.8437, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3066, -2386.04, -1033.39, 89.4069, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3067, -2210.92, 587.477, 34.7473, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3068, -2181.22, 553.669, 34.7301, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3069, -2405.44, -1151.21, 169.543, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3070, 2410.86, -7.05078, 27.6835, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(3071, -2436.37, -1131.54, 169.757, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3072, 2411.22, -8.73535, 26.9844, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(3073, 2416.57, -11.2568, 26.9844, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(3074, 2419.5, -11.8135, 26.9844, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(3075, -2494.38, -1127.61, 137.487, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3076, 2427.67, -17.3438, 26.6115, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(3077, -2511.23, -1150.89, 151.877, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3078, 2428.16, 5.95703, 26.4844, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(3079, 2415.54, 20.0684, 26.9844, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(3080, 2427.83, 7.64355, 26.5107, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(3081, 2421.63, 19.6338, 26.8986, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(3082, -2157.14, 602.764, 45.0768, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3083, -2156.97, 619.102, 51.6114, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3084, -2526.76, -1151.91, 173.861, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3085, -2160.04, 655.897, 51.9296, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3086, -2515.97, -1152.75, 157.756, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3087, -2157.26, 715.456, 69.1323, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3088, -2157.5, 748.525, 69.1131, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3089, -2158.18, 780.96, 69.1036, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3090, 2796.42, 994.512, 10.3575, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3091, -2158.09, 835.752, 69.1179, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3092, 2781.31, 966.312, 10.4571, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3093, 2785.92, 964.952, 10.3231, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3094, -2116.51, 924.79, 85.6414, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3095, 2783.42, 945.571, 10.3252, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3096, -2527.64, -1221.12, 220.578, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3097, -2447.55, -1226.86, 232.972, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3098, -2190.34, 931.59, 75.4025, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3099, -2215.28, 933.04, 67.4068, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3100, -2232.88, 932.339, 66.2203, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3101, -2277.83, 915.877, 66.2142, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3102, 2858.58, 1374.57, 10.4644, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3103, 2844.86, 1381.12, 10.4433, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3104, -2280.68, 879.555, 66.3385, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3105, 2813.99, 1381.14, 10.4785, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3106, 2803.24, 1381.4, 10.4725, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3107, 2798.68, 1376.97, 10.4609, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3108, -2283.41, 849.88, 64.1861, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3109, 2799.74, 1340.91, 10.4662, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3110, 2786.35, 1298.81, 10.475, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3111, -2281.25, 841.667, 58.7704, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3112, 2769.05, 1299.57, 10.4631, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3113, 2758.53, 1291.18, 10.4743, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3114, -2284.15, 829.526, 55.8832, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3116, 2760.14, 1268.36, 10.4713, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3117, 2760.28, 1231.74, 10.4601, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3118, 2763.95, 1225.48, 10.4719, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3119, 2790.33, 1225.57, 10.4576, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3120, 2811.38, 1226.26, 10.4635, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3121, 2846.09, 1224.86, 10.4419, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3122, 2857.47, 1227.52, 10.4678, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3123, -2656.27, -1343.34, 248.767, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3124, 2859.78, 1239.45, 10.4757, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3125, 2853.81, 1290.18, 10.9592, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3126, 2845.66, 1290.98, 10.9541, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3127, 2871.49, 1578.41, 10.3798, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3128, 2872.14, 1604.98, 10.3816, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3129, 2895.64, 1622.47, 10.4023, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3130, 2881.35, 1597.41, 10.385, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3131, -2394.23, -1300.13, 306.948, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3132, -2401.47, -1298.27, 306.515, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3133, 2874.82, 1616.77, 10.3924, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3134, -2278.66, 803.036, 48.9488, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3135, -2445.81, -1303.71, 312.738, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3136, -2482.39, -1301.92, 298.459, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3137, -2295.22, 728.051, 49.0131, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3138, -2516.87, -1336.46, 292.977, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3139, -2314.5, 727.7, 48.9545, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3140, -2327.95, 723.206, 45.5628, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3141, -2353.7, 727.985, 39.5214, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3142, 2835.69, 2019.1, 10.3802, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3143, 2815.38, 2022.12, 10.3899, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3144, -2371.68, 707.039, 34.7361, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3145, 2784.63, 2020.79, 10.3642, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3146, -2408.14, 682.938, 34.7334, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3147, -2476.08, -1345.02, 312.004, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3148, -2445.34, 662.882, 34.2471, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3149, -2452.2, -1340.24, 311.261, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3150, 2779.35, 1972.22, 10.3872, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3151, -2488.88, 603.367, 23.4647, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3152, 2832.16, 2157.54, 10.5886, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3153, -2574.74, 626.282, 14.0254, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3154, 2832.98, 2168.16, 10.596, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3155, 2831.07, 2177, 10.5971, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3156, 2832.2, 2220.56, 10.5908, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3157, -2574.88, 638.479, 14.0288, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3158, 2832.18, 2229.49, 10.5977, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3159, 2833.68, 2251.84, 10.5834, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3160, -2558.01, 637.533, 14.0292, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3161, -2558.14, 626.439, 14.0291, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3162, 2922.44, 2423.7, 10.6402, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3163, 2922.21, 2456.32, 10.6362, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3164, -2575.25, 653.553, 14.018, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3165, 2920.94, 2479.32, 10.4751, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3166, 2877.24, 2520.85, 10.6263, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3167, -2212.82, -1396.17, 263.344, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3168, -2557.71, 654.262, 14.0202, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3169, 2882.25, 2525.23, 10.3928, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3170, -2205.53, -1405.39, 248.9, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3171, -2202.23, -1408.67, 240.037, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3172, 2903.73, 2470.49, 10.6639, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3173, 2870.16, 2438.54, 10.6324, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3174, -2197.03, -1413.51, 229.63, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3175, 2850.78, 2416.21, 10.5572, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3176, -2622.15, 601.646, 14.0231, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3177, 2810.99, 2420.73, 10.6053, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3178, -2649.56, 601.629, 14.0163, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3179, 2787.68, 2443.58, 10.6224, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3180, -2674.32, 601.648, 14.0163, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3181, 2764.37, 2467.87, 10.6185, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3182, -2689.82, 606.094, 14.0254, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3183, 2792.32, 2526.61, 10.6204, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3184, -2673.92, 617.867, 14.0238, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3185, 2783.1, 2540.13, 10.3874, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3186, -2649.28, 618.347, 14.026, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3187, 2787.85, 2560.98, 9.4903, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3188, 2782.54, 2566.57, 10.145, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3189, -2622.42, 618.114, 14.0253, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3190, 2786.2, 2574.37, 10.3693, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3191, 2794.21, 2567.83, 9.51853, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3192, -2630.03, 582.078, 15.625, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3193, 2806.48, 2578.77, 10.3832, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3194, -2652.42, 580.446, 15.625, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3195, 2807.74, 2593.47, 10.237, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3196, -2678.29, 580.447, 15.6753, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3197, 2820.5, 2594.96, 10.3855, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3198, -2367.48, -1256.46, 254.193, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3199, 2826.73, 2599.41, 10.3974, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3200, 2832.14, 2607.67, 10.3938, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3201, 2855.17, 2592.58, 10.3852, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3202, -2305.35, -1229.96, 233.974, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3203, -2598.87, 678.531, 27.3786, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3204, -2596.14, 622.661, 27.3814, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3205, -2220.44, -1316.22, 236.12, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3206, -2540.96, 622.557, 27.3797, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3207, -2544.35, 670.061, 27.379, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3208, -2596.01, 690.762, 27.3857, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3209, -2276.27, -1231.6, 213.814, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3210, -2289.32, -1216.65, 210.907, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3211, -2615.23, 718.618, 27.9838, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3212, 2627.16, 2543.91, 5.91263, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3213, -2627.99, 736.009, 30.1491, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3214, -2621.36, 753.605, 34.8443, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3215, 2498.41, 2779.04, 10.3851, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3216, 2543.51, 2799.13, 10.3906, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3217, -2621.73, 778.827, 44.3085, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3218, 2569.3, 2798.97, 10.3853, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3219, 2587.72, 2800.42, 10.3837, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3220, -2594.89, 780.147, 43.9583, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3221, -2582.33, 796.279, 49.2874, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3222, -2526.47, -1455.91, 359.524, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3223, 2553.17, 2766.48, 10.3948, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3224, 2568.29, 2766.05, 10.3676, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3225, -2564.55, 795.254, 49.15, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3226, 2574.09, 2744.8, 10.3946, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3227, -2546.13, 795.802, 49.2379, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3228, 2563.87, 2745.58, 10.393, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3229, 2548.79, 2745.52, 10.3945, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3230, 2529.62, 2745.45, 10.3982, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3231, -2542.11, 819.299, 49.5528, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3232, 2519.35, 2727.07, 10.3841, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3233, 2531.36, 2725.83, 10.3836, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3234, 2535.95, 2725.71, 10.3876, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3235, -2563.35, 818.786, 49.5546, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3236, 2536.61, 2722.41, 10.5401, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3237, 2525.69, 2721.92, 10.3855, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3238, -2568.54, 835.74, 49.9189, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3239, 2532.95, 2741.33, 10.563, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3240, 2553.13, 2740.04, 10.3764, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3241, -2568.33, 842.678, 51.2556, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3242, 2566.98, 2740.23, 10.3889, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3243, 2588.34, 2724.23, 10.5517, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3244, -2568.79, 851.688, 54.3975, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3245, 2584.53, 2723.93, 12.8249, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3246, -2567.8, 860.057, 57.9677, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3247, -2572.95, 875.048, 61.0218, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3248, 2528.89, 2761.43, 10.3852, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3249, -2573.28, 879.488, 62.6089, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3250, -2399.81, -1861.7, 407.321, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3251, -2391.63, -1865.99, 405.731, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3252, -2361.08, -1851.33, 417.703, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3253, 2484.54, 2881.4, 10.8203, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3254, -2308.43, -1726.64, 479.568, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3255, 2456.5, 2826.28, 10.3671, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3256, -2311.26, -1717.51, 480.654, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3257, 2439.18, 2824.76, 10.3573, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3258, -2321.88, -1690.7, 483.407, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3259, 2408.67, 2824.77, 10.3568, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3260, 2370.69, 2825.1, 10.3353, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3261, 2336.76, 2825.41, 10.3587, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3262, 2280.43, 2825.9, 10.3563, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3263, 2228.91, 2825.95, 10.3882, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3264, -2590.6, 897.586, 64.5536, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3265, 2184.51, 2825.98, 10.385, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3266, 2163.25, 2827.79, 10.9493, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3267, 2149.73, 2827.6, 14.5946, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3268, -2244.56, -1728.33, 480.644, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3269, -2579.95, 897.236, 64.5554, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3270, -2230.14, -1740.33, 480.867, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3271, 2063.07, 2788.84, 10.3382, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3272, -2576.6, 897.258, 64.5537, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3273, 2049.53, 2787.04, 10.3334, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3274, 2040.24, 2788.05, 10.3561, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3275, 2022.85, 2787.87, 10.3563, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3276, -2563.37, 897.341, 64.5577, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3277, 1998.41, 2787.58, 10.3578, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3278, -2257.93, -1748.1, 487.002, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3279, 1976.18, 2787.75, 10.3585, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3280, -2559.91, 897.362, 64.5576, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3281, 1959.94, 2787.87, 10.3598, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3282, 1935.83, 2776.29, 10.455, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3283, -2549.06, 897.431, 64.5584, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3284, -2545.3, 897.454, 64.5566, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3285, 1944.46, 2776.7, 10.3849, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3286, 1948.52, 2766.71, 10.3874, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3287, 1948.69, 2757.14, 10.3912, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3288, -2516.39, 881.802, 61.1195, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3289, -2514.95, 862.906, 56.2603, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3290, 1937.73, 2754.24, 10.3818, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3291, 1925.6, 2754.3, 10.3798, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3292, -2514.37, 843.834, 51.2367, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3293, -2514.83, 824.894, 49.6149, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3294, -2495.19, 796.541, 34.7388, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3295, -2432.62, -1620.16, 526.879, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3296, 1730.02, 2671.14, 10.3871, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3297, -2400.39, -1633.14, 521.011, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3298, 1721.91, 2683.88, 10.3905, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3299, 1721.46, 2698.63, 10.3847, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3300, -2448.53, 755.482, 34.779, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3301, -2440.6, 753.577, 34.7463, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3302, 1469.41, 2488.3, 7.92287, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3303, 1480.59, 2490.32, 8.48503, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3304, 1490.1, 2495.87, 8.91659, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3305, 1489.32, 2511.15, 10.3841, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3306, 1465.26, 2494.65, 8.79924, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3307, 1465.81, 2504.15, 10.5126, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3308, 1452.67, 2514.09, 10.3839, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3309, 1441.56, 2513.37, 10.3946, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3310, 1415.38, 2513.93, 10.3784, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3311, -2498.51, 819.984, 42.7749, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3312, 1373.6, 2513.95, 10.3921, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3313, 1359.73, 2513.73, 10.3961, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3314, 1340.5, 2513.49, 10.3946, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3315, 1315.12, 2513.65, 10.3842, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3316, 1288.36, 2513.42, 10.3855, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3317, 1270.29, 2513.83, 10.3957, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3318, 1258.83, 2514.09, 10.386, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3319, -2501.44, -1444.4, 362.965, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3320, -2540.72, 778.867, 44.0741, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3321, -2540.8, 763.182, 37.71, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3322, 1085.34, 2382.49, 10.3994, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3323, 1084.88, 2359.15, 10.3841, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3324, 1068.04, 2344.41, 10.3856, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3325, -2540.97, 745.414, 31.4552, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3326, 1037.98, 2347.09, 10.395, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3327, -2591.66, -1496.4, 350.957, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3328, 1015.31, 2311.98, 10.3865, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3329, -2540, 728.441, 27.8719, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3330, 1016.34, 2285.35, 10.3644, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3331, 1016.76, 2273.17, 10.3908, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3332, -2628.44, -1476.54, 327.79, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3333, 1018.22, 2223.45, 10.3855, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3334, 1018.21, 2215.3, 10.3838, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3335, -2710.5, -1440.72, 221.97, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3336, -2615.16, 686.43, 30.4841, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3337, 1025.51, 2206.72, 10.3781, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3338, 1040.07, 2206.39, 10.3823, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3339, 1055.2, 2206.6, 10.387, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3340, 1060.83, 2211.1, 10.3934, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3341, 1060.41, 2232.07, 10.386, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3342, 1069.1, 2251.58, 10.3961, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3343, 1090.03, 2275.63, 10.3805, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3344, 1085.6, 2280.97, 10.3775, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3345, 1070, 2281.43, 10.3869, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3346, 1054.32, 2272.38, 10.3834, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3347, 1054.41, 2249.3, 10.3922, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3348, 1027.77, 2260.17, 10.3975, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3349, 1027.82, 2273.59, 10.3983, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3350, 1024.32, 2280.87, 10.3961, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3351, 1020.39, 2280.68, 10.3819, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3352, 1019.44, 2275.73, 10.3833, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3353, 1020.48, 2269.45, 10.3894, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3354, 995.532, 2150.4, 10.3877, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3355, 995.602, 2177.39, 10.3884, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3356, 968.945, 2181, 10.3821, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3357, 943.291, 2181.77, 10.3873, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3358, 925.581, 2182.04, 10.3849, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3359, 918.409, 2175.21, 10.3925, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3360, 919.066, 2150.97, 10.3837, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3361, 919.541, 2137.66, 10.3842, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3362, 919.898, 2111.25, 10.3905, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3363, 919.841, 2088.36, 10.3873, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3364, 919.647, 2052.84, 10.3861, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3365, 921.918, 2046.09, 10.3833, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3366, 947.663, 2045.84, 10.3861, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3367, 958.147, 2048.23, 10.3867, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3368, 972.954, 2048.13, 10.3889, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3369, 993.388, 2048.81, 10.3869, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3370, 994.17, 2068.25, 10.3905, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3371, 994.08, 2074.82, 10.3949, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3372, 994.594, 2092.81, 10.3801, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3373, 995.342, 2117.82, 10.3853, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3374, -2693.1, -1712.38, 252.694, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3375, 1002.51, 2095.24, 10.2407, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3376, 1000.15, 2054.98, 10.3858, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3377, -2671.08, -1708.16, 259.868, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3378, 992.651, 2041.2, 10.7463, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3379, 981.289, 2042.32, 10.9238, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3380, 970.992, 2041.24, 10.9785, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3381, 970.419, 2026.59, 10.9326, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3382, -2645.13, 722.559, 27.5296, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3383, 969.469, 2012.94, 10.8438, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3384, 969.174, 2007.59, 10.9356, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3385, 969.485, 1998.14, 10.9334, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3386, 976.147, 1990.36, 10.9272, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3387, 986.336, 1990.69, 11.0345, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3388, 982.571, 1986.35, 11.0282, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3389, 972.989, 1988.78, 10.9929, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3390, -2652.74, 719.789, 27.495, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3391, 970.053, 1984.28, 10.8763, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3392, 969.899, 1981.12, 10.8495, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3393, 969.585, 1973.99, 10.7893, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3394, -2657.8, 719.919, 27.5119, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3395, 974.048, 1964.53, 10.7262, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3396, 982.849, 1964.31, 10.6753, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3397, -2669.05, 719.838, 27.5002, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3398, 974.798, 1960.99, 10.3854, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3399, -2673.91, 720.345, 27.9286, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3400, 964.327, 1973.88, 10.3846, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3401, -2678.17, 720.785, 28.2977, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3402, 966.278, 2019.4, 10.387, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3403, 955.084, 2040.22, 10.3859, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3404, -2681.84, 720.18, 29.6035, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3405, 948.348, 2014.01, 10.3867, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3406, 948.828, 1999, 10.3838, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3407, -2689.56, 719.49, 32.1477, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3408, 918.795, 1990.31, 10.3835, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3409, -2178.54, -1840.86, 217.175, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3410, -2695.09, 720.668, 34.2239, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3411, -2174.21, -1842.66, 215.889, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3412, 916.687, 2004.74, 10.3842, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3413, -2703.04, 720.405, 37.0473, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3414, 894.45, 1997.87, 10.3886, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3415, 885.538, 1997.74, 10.3907, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3416, 878.73, 1997.68, 10.3928, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3417, -2718.8, 721.077, 40.8116, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3418, 865.013, 2037.64, 10.3867, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3419, 865.997, 2058.14, 10.3854, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3420, -2098.85, -1739.86, 186.663, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3421, -2735.37, 721.36, 40.8498, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3422, 873.338, 2064.48, 10.39, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3423, 890.54, 2063.96, 10.387, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3424, -2739.86, 734.638, 45.3126, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3425, 915.763, 2075.45, 10.3829, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3426, -2093.12, -1679.18, 183.154, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3427, 915.264, 2100.55, 10.3912, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3428, -2739.51, 771.451, 53.944, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3429, 953.558, 2252.43, 10.3939, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3430, -2740.33, 766.95, 53.95, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3431, -1975.95, -1576.13, 132.239, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3432, 972.694, 2251.68, 10.3977, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3433, 986.662, 2251.85, 10.397, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3434, -2740.01, 763.211, 53.9506, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3435, 1000.1, 2266.94, 10.3908, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3436, -1949.77, -1594.55, 135.704, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3437, 2411.98, 61.458, 28.4416, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(3438, 2414.94, 61.1191, 28.4416, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(3439, -2868.78, 817.95, 38.8731, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3440, 2410.2, 64.8164, 27.8438, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(3441, -2876.76, 829.854, 38.9335, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern');
INSERT INTO `ostereier` (`ID`, `X`, `Y`, `Z`, `Inte`, `Dim`, `State`, `gefundenVon`, `comment`, `event`) VALUES
(3442, 2404.62, 80.543, 27.8392, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(3443, -2873.48, 836.82, 38.9399, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3444, -2870.28, 842.859, 38.9216, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3445, 2428.08, 80.8613, 27.8322, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(3446, -2882.14, 826.071, 38.9306, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3447, -2861.95, 825.114, 39.1337, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3448, -2859.65, 831.016, 39.5114, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3449, -1926.06, -1593.17, 91.5711, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3450, 2445, 61.7305, 28.4416, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(3451, 1192.48, 1824.02, 7.63803, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3452, 1192.48, 1824.02, 7.63803, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3453, 2437.91, 61.6436, 28.4416, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(3454, 2436.63, 61.7627, 27.7657, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(3455, -2854.17, 907.789, 43.4816, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3456, 1215.51, 1414.19, 6.29032, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3457, 2429.75, 80.9189, 27.8446, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(3458, 2452.8, 80.8604, 27.8432, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(3459, -2882.38, 975.762, 40.2865, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3460, 2453.22, 69.0254, 28.0515, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(3461, -2893.17, 994.983, 40.2793, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3462, -2905.55, 1020.91, 36.399, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3463, 1158.95, 1077.65, 10.5662, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3464, 1149.57, 1060.2, 10.5674, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3465, -2908.72, 1054.21, 31.6899, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3466, -2909.14, 1067, 31.69, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3467, -2909.43, 1078.88, 31.6984, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3468, 1066.3, 999.697, 10.5637, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3469, 2480.45, 62.752, 27.6835, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(3470, 1020.79, 1034.97, 10.5578, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3471, 1015.91, 1057.46, 10.5738, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3472, 2474.53, 57.5537, 26.5229, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(3473, 2481.22, 61.1787, 26.9844, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(3474, 2488.06, 58.8105, 27.6835, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(3475, 2498.08, 75.958, 26.4844, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(3476, 1385.4, 1147.55, 10.386, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3477, 1385.5, 1138.54, 10.3924, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3478, 1385.67, 1122.07, 10.3945, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3479, -2650.56, 1372.87, 11.7835, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3480, -2651.05, 1362.56, 15.7812, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3481, -2650.32, 1372.27, 20.7215, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3482, -2651.05, 1362.82, 20.7266, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3483, -2659.86, 1372.13, 27.1562, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3484, -2659.88, 1400.44, 36.9268, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3485, -2660.1, 1423.66, 36.9381, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3486, -2296.39, -1044.07, 16.0249, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3487, -2659.84, 1446.12, 41.8359, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3488, -2652.55, 1446.25, 41.8295, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3489, -2651.46, 1458.15, 46.6094, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3490, -2659.01, 1459.23, 49.6665, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3491, 2139, 869.149, 7.82657, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3492, -2659.65, 1478.4, 51.0939, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3493, -2659.15, 1487.88, 51.7992, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3494, -2659.4, 1502.92, 52.9186, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3495, -2659.4, 1502.92, 52.9186, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3496, -2659.31, 1513.62, 53.7151, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3497, -2659.45, 1529.27, 54.8803, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3498, -1909.55, -1505.07, 23.4183, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3499, -1923.9, -1696.48, 22.0964, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3500, -2662.19, 1530.07, 58.8476, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3501, -1898.99, -1695.35, 22.101, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3502, -2662.51, 1518.32, 58.0507, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3503, -1857.75, -1701.56, 23.2031, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3504, -2649.18, 1401.33, 24.7656, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3505, -2632.12, 1416.27, 24.7656, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3506, -1846.02, -1716.72, 23.2031, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3507, -1860.26, -1693.71, 23.2031, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3508, -1839.77, -1694.87, 32.3521, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3509, -1837.06, -1705.45, 41.1241, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3510, -1846.21, -1706.84, 41.1123, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3511, -2475.08, 1331.84, 9.93593, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3512, -2475.53, 1322.45, 12.8871, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3513, -2475.61, 1315.1, 14.813, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3514, -2061.56, 1436.28, 6.7118, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3515, -2095.03, 1436.14, 6.86774, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3516, -1955.37, 1345.04, 6.75292, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3517, -1856.08, 1324.84, 7.1875, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3518, -1851.91, 1329.71, 6.77314, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3519, -1791.63, 1429.38, 6.7498, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3520, -1699.78, 1366.69, 6.74927, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3521, -1848.48, -1671.56, 21.75, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3522, -1697.43, 1361.67, 9.37018, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3523, -1829.21, -1623.81, 23.0156, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3524, -1805.67, -1623.82, 23.0156, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3525, -1810.08, -1623.79, 23.0215, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3526, -1868.86, -1626.43, 21.8542, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3527, -1845.29, -1626.38, 21.8471, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3528, -1670.32, 1223.41, 6.84965, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3529, -1679.65, 1214.48, 6.82575, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3530, -1857.78, -1691.01, 41.5859, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3531, -1670.16, 1203.05, 7.22642, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3532, -1899.35, -1683.74, 23.0156, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3533, -1899.36, -1658.55, 23.0156, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3534, -1645.4, 1202.69, 13.2396, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3535, -1665.32, 1229.07, 13.6719, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3536, -1683.97, 1210.74, 13.2323, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3537, -1677.34, 1203.77, 13.3807, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3538, -1645.35, 1202.43, 20.7202, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3539, -1665.12, 1228.54, 20.7112, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3540, -1683.94, 1210.68, 20.7203, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3541, -1676.99, 1202.94, 20.7143, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3542, -1633.35, 1093.16, 6.94634, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3543, -256.513, 2228.57, 56.7723, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3544, -1662.71, 1007.85, 7.48306, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3545, -327.895, 2223.56, 42.6904, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3546, -360.843, 2235.79, 42.0089, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3547, -1606.66, 993.685, 7.1875, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3548, -378.476, 2257.78, 42.0005, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3549, -363.051, 2203.45, 41.9937, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3550, -1628.86, 884.238, 8.77958, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3551, -1614.07, 801.785, 6.6139, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3552, -383.229, 2203.17, 45.6711, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3553, -391.195, 2214.44, 45.4818, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3554, -1605.82, 711.148, 13.4336, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3555, -1637.53, -2233.45, 31.4766, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3556, -1630.17, -2232.27, 31.4766, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3557, -1628.55, -2246.59, 31.4766, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3558, -1634.17, -2247.62, 31.4766, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3559, -393.086, 2226.62, 47.0237, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3560, -1698.75, 708.009, 24.4562, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3561, -376.917, 2239.9, 46.1909, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3562, -375.238, 2241.53, 47.2052, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3563, -371.867, 2245.17, 45.9571, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3564, -1669.38, 716.653, 30.1613, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3565, -395.635, 2143.58, 51.8409, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3566, -1691.26, 716.681, 30.1646, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3567, -1691.46, 694.728, 30.1728, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3568, -443.962, 2117.24, 48.0394, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3569, -460.979, 2097.04, 54.3526, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3570, -455.278, 2016.69, 60.1881, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3571, -1668.77, 694.866, 30.1636, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3572, -526.554, 1990.17, 59.8459, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3573, -557.662, 2012.32, 59.9509, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3574, -599.178, 2037.91, 59.9535, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3575, -641.329, 2054.11, 59.9524, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3576, -700.119, 2064.87, 59.9528, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3577, -764.376, 2054.97, 59.9516, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3578, -816, 2037.56, 59.951, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3579, -860.516, 2005.97, 59.9646, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3580, -862.818, 1827.33, 60.3006, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3581, -1156.72, -2313.77, 34.5981, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3582, -1187, 1811.77, 40.7731, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3583, -1193.13, 1791.79, 40.9786, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3584, -1573.24, 686.578, 6.75189, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3585, -1189.61, 1753.8, 37.4082, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3586, -1180.69, -2399.97, 43.7937, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3587, -1572.79, 657.881, 6.73584, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3588, -1165.66, -2354.91, 20.7797, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3589, -1090.58, 1619.47, 33.5962, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3590, -1162.52, -2350.17, 21.3512, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3591, -1087.78, 1578.55, 30.5692, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3592, -1059.63, 1551.61, 32.8937, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3593, -1525.74, 459.749, 6.75307, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3594, -1045.58, 1553.55, 32.8566, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3595, -1045.91, 1561.79, 32.8189, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3596, -1708.41, 376.855, 6.74635, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3597, -954.828, 1667.13, 18.3908, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3598, -1713.09, 383.221, 6.74121, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3599, -1718.93, 387.672, 6.74584, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3600, -915.171, 1665.41, 15.2614, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3601, -1724.8, 393.232, 6.74527, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3602, -1030.65, 1630.28, 30.0375, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3603, -1807.23, 413.077, 16.2204, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3604, -1794.94, 401.022, 16.1647, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3605, -910.892, 1505.72, 26.0291, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3606, -893.67, 1508.25, 25.5139, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3607, -883.849, 1525.16, 25.4804, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3608, -873.663, 1540.53, 25.4891, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3609, -876.401, 1550.41, 25.4889, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3610, -1890.76, 390.45, 19.9877, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3611, -885.381, 1565.83, 25.5888, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3612, -912.089, 1542.17, 25.471, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3613, -910.675, 1532.92, 25.4903, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3614, -2099.9, 298.79, 35.3314, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3615, -828.562, 1584.72, 26.5468, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3616, -826.762, 1603.25, 26.687, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3617, -2131.4, 368.636, 34.7361, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3618, -2131.39, 346.589, 34.7372, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3619, -793.383, 1593.19, 26.6887, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3620, -2114.29, 337.472, 34.7433, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3621, -765.821, 1608.37, 26.6912, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3622, -745.924, 1605.91, 26.6815, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3623, -2050.94, 336.67, 34.7371, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3624, -737.533, 1590.76, 26.6691, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3625, -2021.84, 350.869, 34.7431, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3626, -796.911, 1556.18, 26.7022, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3627, -817.965, 1564.6, 26.6902, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3628, -817.874, 1555.18, 26.6824, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3629, -820.041, 1502.33, 19.3154, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3630, -1973.88, -2413.8, 36.2567, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3631, -800.767, 1500.76, 21.0975, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3632, -1980.94, -2413.41, 37.5816, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3633, -788.467, 1500.17, 22.4871, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3634, -766.529, 1484.01, 24.3139, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3635, -1998.04, -2396.7, 36.0647, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3636, -784.687, 1484.55, 22.9305, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3637, -825.745, 1484.75, 18.4044, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3638, -2006.44, -2391.91, 35.9028, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3639, -2013.42, -2384.88, 35.8805, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3640, -821.424, 1429.95, 13.3718, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3641, -2019.35, -2375.86, 35.8906, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3642, -804.224, 1427.52, 13.3264, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3643, -790.241, 1428.6, 13.3562, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3644, -776.312, 1428.11, 13.3605, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3645, -775.236, 1447.04, 13.513, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3646, -2031.92, -2347.92, 40.8906, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3647, -782.642, 1445.8, 13.4494, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3648, -799.94, 1445.79, 13.4601, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3649, -809.661, 1446.23, 13.3866, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3650, -2766.34, 581.218, 15.2144, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3651, -629.527, 1192.69, 10.6237, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3652, -2835.32, 643.264, 12.6026, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3653, -2846.06, 769.512, 35.537, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3654, -2100.94, -2341.71, 34.8203, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3655, -332.562, 1037.77, 19.3077, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3656, -2849.74, 1024.03, 36.8812, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3657, -309.039, 1034.5, 19.2301, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3658, -299.106, 1047.64, 19.1508, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3659, -317.488, 1056.25, 19.3086, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3660, -2149.61, -2290.72, 33.2188, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3661, -309.36, 1121.47, 19.3083, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3662, -306.702, 1130.7, 19.3126, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3663, -2786.39, 1258.92, 12.4837, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3664, -297.49, 1132.01, 19.8266, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3665, -287.994, 1124.75, 19.6594, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3666, -2726.07, 1246.36, 11.3306, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3667, -262.376, 1077.54, 19.7692, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3668, -257.173, 1065.79, 19.7688, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3669, -249.281, 1075.11, 19.6756, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3670, -2204, -2248.76, 33.3132, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3671, -223.405, 1090.71, 19.3064, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3672, -2648.63, 1280.62, 6.8726, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3673, -2184.99, -2263.87, 33.3203, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3674, -211.993, 1076.94, 19.3223, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3675, -2542.94, 1352.5, 10.8757, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3676, -219.119, 1049.88, 19.316, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3677, -221.302, 1033.33, 19.3111, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3678, -211.228, 1027.09, 19.315, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3679, -176.982, 1019.96, 19.3219, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3680, -2235.82, -2290.53, 30.625, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3681, -164.818, 1052.41, 19.3471, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3682, -152.102, 1070.4, 19.3184, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3683, -136.825, 1079.66, 19.307, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3684, -119.098, 1084.4, 19.3424, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3685, -126.655, 1066.59, 19.3564, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3686, -2187.13, -2320.84, 30.625, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3687, -2193.37, -2331.66, 30.625, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3688, -2217.64, -2336.85, 30.625, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3689, -111.404, 1127.85, 19.3072, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3690, -2214.57, -2336.46, 30.625, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3691, -95.2812, 1165.29, 19.3099, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3692, -39.374, 1110.02, 19.4941, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3693, -2161.38, -2360.76, 30.783, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3694, -14.3018, 1114.49, 19.7291, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3695, -10.9443, 1122.35, 19.8431, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3696, 8.14062, 1130.13, 19.8018, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3697, -2656.92, 1595.47, 64.0407, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3698, -2173.56, -2415.63, 34.2969, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3699, -12.7061, 1163.88, 19.1294, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3700, -2706.27, 1594.89, 64.0124, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3701, -12.042, 1171.43, 19.0024, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3702, -21.1592, 1175.43, 19.1328, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3703, -36.6895, 1182.08, 18.9201, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3704, -2180.87, -2415.77, 35.2969, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3705, -47.0596, 1190.61, 18.9323, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3706, -2186.04, -2428.31, 35.5162, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3707, -70.3828, 1213.19, 19.3051, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3708, -2183.18, -2428.9, 35.5162, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3709, -69.3389, 1231.55, 19.1939, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3710, -78.2207, 1229.68, 19.3579, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3711, -2656.93, 1933.3, 64.0452, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3712, -94.2695, 1228.91, 19.318, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3713, -2224.53, -2400.33, 31.9844, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3714, -2706.12, 1935.14, 63.9611, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3715, -2189.46, -2417.34, 30.625, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3716, -137.246, 1239.56, 18.9057, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3717, -179.221, 1217.93, 19.3078, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3718, -210.797, 1221.31, 19.453, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3719, -214.382, 1212.23, 19.3095, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3720, -2199.52, -2460.9, 31.1172, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3721, -321.876, 1174.98, 20.2422, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3722, -2249.98, -2426.32, 32.0838, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3723, -342.712, 1182.39, 19.3194, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3724, -2627.84, 2423.93, 13.5927, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3725, -2245.37, -2490.61, 30.8369, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3726, -2638.05, 2396.83, 10.7958, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3727, -2639.28, 2369.82, 8.60579, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3728, -363.382, 1169.48, 19.3071, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3729, -2598.13, 2364.14, 9.44311, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3730, -2294.38, -2450.15, 25.6107, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3731, -2292.92, -2449.13, 25.7716, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3732, -365.604, 1145.28, 19.7565, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3733, -2537.76, 2319.13, 4.55063, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3734, -378.021, 1142.23, 19.7831, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3735, -375.207, 1134.55, 19.9109, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3736, -360.967, 1118.7, 19.5163, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3737, -2513.77, 2353.58, 4.5468, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3738, -379.087, 1114.73, 19.8069, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3739, -374.799, 1106.76, 19.3059, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3740, -366.68, 1104.71, 19.3089, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3741, -372.95, 1097.26, 19.3019, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3742, -2489.44, 2369.06, 9.83784, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3743, -335.992, 1053.09, 19.2959, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3744, -333.629, 1060.87, 19.3067, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3745, -273.148, 984.433, 19.6114, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3746, -280.214, 984.987, 19.6562, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3747, -2433.64, 2294.66, 4.55033, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3748, -2106.88, -2474.15, 30.625, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3749, -129.542, 920.432, 19.2369, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3750, -96.9561, 931.501, 20.129, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3751, -102.342, 964.713, 19.6481, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3752, -2086.44, -2439.82, 30.625, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3753, -70.2148, 973.896, 19.3988, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3754, -43.5078, 971.233, 19.32, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3755, -35.8857, 967.339, 19.305, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3756, -2086.22, -2419.8, 30.625, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3757, -17.1855, 962.869, 19.2141, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3758, -8.22852, 967.079, 19.3195, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3759, -2118.73, -2409.46, 31.2596, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3760, 14.0596, 966.023, 19.4168, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3761, -2117.27, -2416.05, 31.2266, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3762, 21.125, 959.472, 19.5675, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3763, -2109.2, -2398.83, 31.4103, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3764, -2104.47, -2399.48, 31.4219, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3765, 24.9824, 951.179, 19.6201, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3766, 5.11426, 948.542, 19.1155, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3767, 22.0117, 921.437, 23.2437, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3768, 23.1514, 903.222, 23.8621, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3769, 64.6357, 979.786, 14.9241, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3770, 56.5273, 994.306, 14.452, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3771, -2500.42, 2276.43, 4.61466, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3772, 113.707, 1062.29, 13.1789, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3773, 104.082, 1105.02, 13.1719, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3774, 186.871, 1162.59, 14.3937, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3775, 282.525, 1145.08, 8.94287, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3776, 295.17, 1133.44, 8.41382, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3777, -2528.62, 2241.09, 4.98181, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3778, 314.597, 1152.56, 8.15424, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3779, 391.665, 1148.23, 8.37469, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3780, 406.245, 1164.06, 7.47416, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3781, 413.221, 1162.96, 7.47734, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3782, 573.896, 1211.23, 11.808, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3783, 592.384, 1243.02, 11.2953, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3784, 596.72, 1269.46, 11.2807, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3785, 626.589, 1266.55, 11.2891, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3786, 634.855, 1248.01, 11.2608, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3787, 703.633, 1210.1, 12.9546, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3788, 708.65, 1213.97, 12.8102, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3789, 711.679, 1213.84, 12.8108, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3790, 717.798, 1212.6, 12.9237, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3791, 710.788, 1195.02, 12.9769, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3792, 710.346, 1190.6, 12.9662, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3793, -2532.65, 2234.1, 4.76207, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3794, -2521.45, 2228.24, 4.54406, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3795, 972.012, 1019.7, 10.3892, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3796, 989.319, 997.463, 10.3931, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3797, 1019.64, 971.221, 10.3829, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3798, -2514.31, 2291.46, 4.55041, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3799, -2445.78, 2306.72, 4.55437, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3800, -2504.09, 2343.56, 4.53864, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3801, -2547.43, 2352.66, 4.54818, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3802, 769.256, 920.414, 2.92843, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3803, 740.282, 975.659, 5.38308, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3804, 672.565, 1007.88, 5.39793, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3805, 620.187, 1005.84, 4.87008, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3806, -2635.42, 2373.23, 8.57538, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3807, 579.271, 984.878, -7.69837, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3808, -2636.12, 2384.84, 10.7632, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3809, 701.062, 957.105, -17.8699, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3810, -2484.09, 2408.88, 16.7574, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3811, -386.178, -1438.62, 26.3203, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3812, 572.768, 839.956, -42.2978, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3813, -364.967, -1429.07, 25.7266, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3814, -362.873, -1423.7, 25.7266, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3815, -369.548, -1423.74, 25.7266, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3816, -370.835, -1430.96, 25.7266, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3817, -2476.7, 2450.07, 16.8966, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3818, -2446.86, 2486.65, 15.3203, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3819, -2445.42, 2491.39, 14.8977, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3820, 832.459, 819.197, 11.9966, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3821, -2462.19, 2514.91, 16.3854, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3822, -83.5547, -1202.17, 2.89062, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3823, 453.73, 765.958, 5.1265, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3824, 404.8, 785.822, 8.40732, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3825, -86.9756, -1211.71, 2.89062, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3826, 60.4707, 613.605, 7.52638, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3827, 43.7363, 610.349, 7.16696, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3828, -2241.61, 2322.25, 7.1, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3829, -379.816, 567.281, 15.9588, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3830, -478.646, 584.955, 16.6166, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3831, -571.58, 625.506, 16.3862, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3832, -665.492, 667.553, 16.3734, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3833, -746.681, 703.529, 17.8907, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3834, -884.597, 1267.79, 34.7179, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3835, -980.263, 1298.33, 39.9038, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3836, -1119.79, 1149.72, 36.857, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3837, -1206.15, 1031.46, 42.017, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3838, -1295.12, 937.969, 45.5991, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3839, -2372.04, 2211.09, 4.55431, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3840, -1344.11, 885.462, 46.7279, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3841, -1407.86, 818.361, 47.343, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3842, -2371.29, 2221.6, 4.57873, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3843, -1465.85, 759.42, 46.1323, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3844, -1552.01, 667.032, 43.9815, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3845, -1631.75, 583.465, 39.9437, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3846, -74.6221, -362.975, 5.42969, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3847, -45.8779, -289.435, 4.99466, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3848, 14.0762, -266.77, 5.0056, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3849, -140.703, -328.527, 0.991167, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3850, -185.296, -263.647, 0.990975, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3851, -202.062, -247.789, 0.993641, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3852, -1836.45, 365.512, 16.6785, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3853, -188.606, -193.34, 0.99527, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3854, -1846.8, 335.619, 16.7274, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3855, -1835.43, 326.568, 16.7316, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3856, -1822.22, 355.558, 16.7285, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3857, -196.264, -187.277, 1.42969, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3858, -1779.63, 309.675, 7.36182, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3859, -2423.44, 2362.27, 4.52608, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3860, -207.885, -184.427, 1.42969, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3861, -214.575, -182.859, 1.42969, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3862, -2438.98, 2367.17, 4.52527, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3863, -231.21, -178.859, 1.42969, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3864, -1741.51, 196.429, 3.12397, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3865, -185.027, -189.884, 1.5634, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3866, -170.968, -193.226, 1.42969, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3867, -1743.67, 176.368, 3.12073, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3868, -147.195, -232.239, 1.42188, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3869, -1660.87, 48.0381, 3.11998, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3870, -122.452, -231.961, 1.42188, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3871, -1643.9, 66.1113, 3.12999, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3872, -1563.39, 90.5645, 7.56733, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3873, -2501.67, 2372.38, 12.0076, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3874, -1541.71, 94.0127, 16.899, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3875, -1551.69, 55.4131, 16.8932, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3876, -2551.63, 2320.26, 4.53623, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3877, -1489.1, 127.244, 16.8918, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3878, 31.6045, -220.408, 2.09813, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3879, -1708.55, -84.4951, 3.11285, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3880, -1701.29, -127.241, 3.13076, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3881, 19.1592, -313.528, 2.52085, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3882, -2441.71, 2454.98, 13.5147, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3883, -1812.71, -144.029, 6.52797, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3884, -1821.13, -155.162, 8.97616, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3885, -2512.48, 2451.58, 17.4128, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3886, -1883.12, -203.69, 15.7116, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3887, 84.4375, -311.382, 1.57812, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3888, 90.9473, -315.198, 1.57812, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3889, -1897.31, -217.687, 22.6558, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3890, 96.6074, -251.894, 1.57812, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3891, -1912.6, -185.524, 22.6648, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3892, 119.836, -223.24, 1.57812, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3893, -1895.06, -184.628, 22.6984, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3894, -2422.3, 2485.39, 12.7427, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3895, 166.424, -253.26, 1.57812, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3896, -1823.39, -229.297, 17.952, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3897, 152.832, -299.99, 1.57812, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3898, -2186.27, 2418.29, 4.75948, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3899, -1807.4, -421.069, 14.9303, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3900, 162.063, -320.673, 1.57812, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3901, -2184.19, 2415.63, 4.83862, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3902, -1818.16, -497.749, 14.6783, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3903, -2188.24, 2411.89, 4.71932, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3904, -2184.97, 2413.41, 4.72773, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3905, -1685.2, -598.115, 14.0607, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3906, -1594.34, -496.689, 6.44706, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3907, 157.114, -277.478, 1.57812, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3908, -1539.83, -438.013, 5.61936, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3909, 169.509, -227.826, 1.57812, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3910, -1331.81, -339.143, 13.7142, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3911, -1338.26, -308.598, 13.7056, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3912, -1414.38, -230.147, 13.7148, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3913, -72.5791, -108.257, 3.11808, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3914, -1447.91, -210.1, 13.7124, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3915, -97.3232, -94.2109, 3.11808, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3916, -1476.68, -211.723, 13.7138, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3917, -120.797, -99.6357, 3.11808, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3918, -1487.62, -252.969, 13.7009, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3919, -145.081, -86.3379, 3.11808, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3920, -1531.48, -263.197, 13.7088, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3921, -1560.4, -276.347, 13.7198, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3922, -1594.95, -309.128, 13.7188, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3923, -1669.01, -416.376, 13.7138, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3924, -90.9541, -53.2852, 3.11719, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3925, -1656.73, -464.844, 21.511, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3926, -92.8232, -25.7354, 3.11719, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3927, -1596.39, -525.136, 21.863, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3928, -2349.77, 2425.85, 6.91572, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3929, -1670.19, -603.112, 13.7125, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3930, -1699.83, -622.079, 13.7113, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3931, -2386.22, 2411.12, 8.48313, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3932, -93.5391, 2.18164, 6.14062, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3933, -1542.67, -663.948, 13.7137, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3934, -1503.77, -661.781, 13.6999, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3935, -1483.23, -637.835, 13.7162, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3936, -2399.05, 2402.99, 8.92969, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3937, -70.6289, 35.6562, 3.11027, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3938, -1410.7, -543.697, 13.7378, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3939, -51.1025, 57.1885, 3.11027, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3940, -1445.04, -559.349, 13.7385, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3941, -41.3096, 98.8613, 3.1096, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3942, -1373.77, -520.898, 13.7332, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3943, -37.9072, 97.4307, 3.11719, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3944, -1396.68, -482.748, 13.7284, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3945, -1355.14, -458.021, 13.743, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3946, -1343.42, -473.691, 13.7493, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3947, -91.5176, 61.0566, 3.11719, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3948, -91.6865, 49.2939, 3.11719, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3949, -1327.12, -436.447, 13.7188, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3950, -51.6455, 5.35547, 3.11719, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3951, -44.1621, 26.2119, 3.11719, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3952, -1552.96, -427.053, 5.57586, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3953, -39.2979, 53.3232, 3.11719, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3954, -1616.56, -487.91, 7.37307, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3955, -42.1748, 55.5889, 6.48438, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3956, -1547.78, -535.054, 13.7134, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3957, -1481.15, -505.699, 13.7185, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3958, -2675.74, 2564.34, 76.0293, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3959, -1432.73, -482.918, 13.7142, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3960, -1385.08, -429.06, 13.7157, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3961, -1376.26, -377.169, 13.7122, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3962, -1380.23, -353.778, 13.7158, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3963, -1467.63, -265.02, 13.7204, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3964, -1489.1, -263.028, 13.7112, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3965, -1596.15, 2696.97, 54.6499, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3966, -1573.78, -290.709, 13.7157, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3967, -1618.77, -363.455, 13.7129, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3968, -1651.28, -429.425, 13.7126, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3969, 90.1748, -183.824, 1.48437, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3970, -1643.43, -443.354, 13.7237, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3971, -1663.27, -457.216, 13.7154, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3972, -1678.17, -504.44, 13.7136, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3973, -1327.8, 2677.49, 49.6296, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3974, -1114.37, 2698.16, 45.4368, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3975, 81.8203, -172.305, 3.24001, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3976, -1713.68, -753.94, 37.5777, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3977, 84.6855, -165.768, 2.59375, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3978, -1491.63, -827.893, 64.2654, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3979, -880.8, 2760.79, 45.5852, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3980, 99.5752, -161.676, 2.59375, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3981, -879.21, 2748.58, 45.5215, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3982, -866.333, 2749.88, 45.5985, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3983, 151.232, -152.908, 5.07861, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3984, -867.47, 2761.73, 45.5698, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3985, -851.885, 2761.03, 45.5775, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3986, -838.543, 2762.13, 45.5833, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3987, -825.704, 2752.54, 45.5688, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3988, -826.244, 2764.78, 45.5633, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3989, -815.477, 2764.81, 45.5115, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3990, -814.068, 2753.38, 45.5633, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3991, -788.546, 2749.62, 45.4185, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3992, -736.078, 2745.79, 46.7894, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3993, 169.609, -197.702, 5.07861, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3994, 144.555, -199.689, 5.04739, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3995, 446.783, -1726.86, 9.70354, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(3996, -320.258, 2658.61, 63.8692, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(3997, 146.626, -197.438, 6.28125, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(3998, 2127.39, 47.8604, 25.9379, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(3999, 2127.38, 35.9814, 25.9323, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4000, 193.817, -224.781, 1.77862, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(4001, 2076.17, 47.5869, 25.9516, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4002, 220.229, -234.512, 1.77862, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(4003, 219.695, -225.631, 1.77862, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(4004, 2076.26, 36.1221, 25.9342, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4005, 370.824, -114.914, 1001.49, 5, 2, 0, NULL, 'geramy ', 'ostern'),
(4006, 372.139, -117.246, 1001.49, 5, 2, 0, NULL, 'geramy ', 'ostern'),
(4007, 379.687, -117.278, 1001.49, 5, 2, 0, NULL, 'geramy ', 'ostern'),
(4008, 371.382, 163.461, 1008.39, 3, 0, 0, NULL, 'Liz ', 'ostern'),
(4009, 2162.67, -102.339, 2.75, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4010, 257.409, -189.685, 7.06135, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(4011, 272.145, -201.019, 7.06135, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(4012, 389.303, 170.496, 1008.38, 3, 0, 0, NULL, 'Liz ', 'ostern'),
(4013, 244.038, -56.916, 1.57764, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(4014, 250.492, -58.4424, 1.57031, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(4015, 251.8, -54.79, 1.57764, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(4016, 244.878, -53.3398, 1.57764, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(4017, 247.176, -44.2871, 1.58534, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(4018, 211.431, 22.1875, 2.5708, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(4019, 208.993, 26.5527, 2.5708, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(4020, 270.365, 32.1748, 3.26895, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(4021, 2115.86, 961.772, 10.8203, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4022, 2098.67, 945.044, 10.8203, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4023, -37.2422, -91.8486, 1003.55, 18, 5, 0, NULL, 'Maxx ', 'ostern'),
(4024, -37.3018, -74.6416, 1003.55, 18, 5, 0, NULL, 'Maxx ', 'ostern'),
(4025, -32.6807, -79.6543, 1003.55, 18, 5, 0, NULL, 'Maxx ', 'ostern'),
(4026, -28.4531, -80.2861, 1003.55, 18, 5, 0, NULL, 'Maxx ', 'ostern'),
(4027, -24.5527, -79.7285, 1003.55, 18, 5, 0, NULL, 'Maxx ', 'ostern'),
(4028, -20.2773, -80.9854, 1003.55, 18, 5, 0, NULL, 'Maxx ', 'ostern'),
(4029, -16.1055, -79.748, 1003.55, 18, 5, 0, NULL, 'Maxx ', 'ostern'),
(4030, -14.9004, -91.2441, 1003.55, 18, 5, 0, NULL, 'Maxx ', 'ostern'),
(4031, -26.8779, -91.8281, 1003.55, 18, 5, 0, NULL, 'Maxx ', 'ostern'),
(4032, 2136.18, 885.59, 11.2188, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4033, 2100.15, 884.119, 10.813, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4034, 2196.11, 942.011, 10.3864, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4035, 2147.4, 1123.55, 12.221, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4036, 2154.76, 1139.42, 12.2056, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4037, 2610.53, -2709.21, 16.1063, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4038, 2182.3, 1105.56, 12.2039, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4039, 2610.48, -2720.49, 16.1085, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4040, 2619.81, -2728.6, 16.1063, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4041, 2631.92, -2726.18, 16.1063, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4042, 2642.68, -2684.57, 16.5607, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4043, 2178.1, 1269.62, 10.3843, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4044, 2178.05, 1301.72, 10.3823, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4045, 2326.68, -2022.19, 13.105, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4046, 2196.37, 1298.01, 10.3797, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4047, 2283.66, -1929.39, 12.247, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4048, 2196.55, 1273.8, 10.3817, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4049, 2238.42, 1275.79, 10.3781, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4050, 2262.14, -1928.97, 12.1411, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4051, 1224.37, 312.353, 19.7578, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(4052, 2238.35, 1295.58, 10.385, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4053, 2239.03, -1929.53, 12.2358, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4054, 2236.51, 1303.46, 10.3862, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4055, 2236.63, 1268.17, 10.3938, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4056, 1283.86, 300.585, 19.5547, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(4057, 1271.61, 295.135, 20.6563, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(4058, 2248.92, 1291.85, 10.3339, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4059, 2124.69, -1796.74, 13.1196, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4060, 2256.63, 1290.16, 10.4027, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4061, 1291.31, 295.211, 25.7998, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(4062, 1288.18, 291.777, 25.7998, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(4063, 1286.91, 288.927, 25.7998, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(4064, 379.508, -116.843, 1001.49, 5, 1, 0, NULL, 'Liz ', 'ostern'),
(4065, 374.173, -114.829, 1001.49, 5, 1, 0, NULL, 'Liz ', 'ostern'),
(4066, 1286.95, 313.415, 26.0555, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(4067, 369.635, -116.215, 1001.49, 5, 1, 0, NULL, 'Liz ', 'ostern'),
(4068, 1262.98, 316.045, 25.2047, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(4069, 372.068, -120.028, 1001.49, 5, 1, 0, NULL, 'Liz ', 'ostern'),
(4070, 379.817, -119.837, 1001.49, 5, 1, 0, NULL, 'Liz ', 'ostern'),
(4071, 1987.25, 1344.6, 10.5431, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4072, 1239.29, 311.71, 24.7578, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(4073, 1978.01, 1343.97, 12.4922, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4074, 1952.68, 1345.68, 14.9459, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4075, 1951.7, 1340.67, 14.9483, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4076, 1200.54, 243.743, 19.5547, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(4077, 1969.93, 1341.67, 15.0119, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4078, 1978.32, 1341.92, 12.2697, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4079, 1989.8, 1342.09, 10.5412, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4080, 2004.48, 1342.29, 10.5105, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4081, 1235.17, 224.05, 19.5547, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(4082, 2152.48, -1787.16, 13.0811, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4083, 1245.86, 203.988, 23.0547, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(4084, 2147.18, -1795.73, 14.7522, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4085, 1263.4, 235.343, 25.0487, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(4086, 2141.62, -1803.37, 16.1475, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4087, 1245.19, 234.714, 28.0728, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(4088, 2146.48, -1817.27, 16.1406, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4089, 1241, 234.598, 28.0728, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(4090, 2175.04, -1822.5, 16.1418, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4091, 2188.78, -1830.43, 16.1406, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4092, 1267.76, 241.884, 31.1073, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(4093, 2177.92, -1815.69, 13.128, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4094, 2090, 1458.44, 10.3949, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4095, 2090.14, 1466.73, 10.3841, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4096, 2237.9, -1738.54, 13.047, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4097, 2266.85, -1744.19, 13.1163, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4098, 2346.07, -1742.3, 13.1146, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4099, 2089.86, 1476.83, 10.5649, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4100, 2374, -1743.08, 13.1129, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4101, 2090.03, 1488.99, 10.3829, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4102, 2383.24, -1815.92, 13.1125, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4103, 2089.92, 1499.02, 10.4238, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4104, 2090.18, 1508.04, 10.3895, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4105, 2323.93, -1786.79, 13.1107, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4106, 368.164, -114.913, 1001.49, 5, 3, 0, NULL, 'geramy ', 'ostern'),
(4107, 2323.64, -1776.78, 13.1334, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4108, 370.081, -115.021, 1001.49, 5, 3, 0, NULL, 'geramy ', 'ostern'),
(4109, 380.13, -117.275, 1001.49, 5, 3, 0, NULL, 'geramy ', 'ostern'),
(4110, 373.489, -117.269, 1001.5, 5, 3, 0, NULL, 'geramy ', 'ostern'),
(4111, 371.811, -117.278, 1001.49, 5, 3, 0, NULL, 'geramy ', 'ostern'),
(4112, 2096.22, 1514.64, 10.3853, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4113, 2341.08, -1761.62, 13.112, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4114, 2357.8, -1764.02, 13.1243, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4115, 2120.66, 1496.83, 10.3828, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4116, 2120.15, 1470.14, 10.3798, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4117, 2428.73, -1777.43, 13.113, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4118, 2444.28, -1777.37, 13.1241, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4119, 2459.73, -1775.51, 13.139, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4120, 2452.61, -1786.17, 13.1224, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4121, 2154.29, 1469.49, 10.3855, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4122, 2447.58, -1801.09, 14.7725, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4123, 2154.72, 1496.1, 10.384, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4124, 1351.69, 316.862, 20.5547, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(4125, 2479.38, -1775.29, 13.1223, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4126, 2483.87, -1771.6, 13.1287, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4127, 1370.77, 356.896, 20.5547, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(4128, 2178.38, 1508.23, 10.4064, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4129, 2495.23, -1756.49, 13.0361, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4130, 2177.92, 1499.63, 10.386, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4131, 1300.26, 355.183, 19.5617, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(4132, 2178.66, 1489.78, 10.3833, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4133, 2177.98, 1477.41, 10.3885, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4134, 2178.52, 1467.41, 10.3843, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4135, 2178.04, 1458.52, 10.3798, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4136, 2633.37, -1847.12, 11.4761, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4137, 1373.14, 377.724, 19.7578, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(4138, 2553.54, -1717.01, 5.68678, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4139, 2550.41, -1744.05, 5.81565, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4140, 1392.89, 469.807, 20.1005, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(4141, 2585.93, -1749.61, 6.50829, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4142, 2268.52, 1503.75, 10.3873, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4143, 2612.71, -1750.4, 5.34877, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4144, 2613.93, -1727.24, 5.8055, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4145, 2617.56, -1643.9, 5.93448, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4146, 2590.14, -1714.62, 1.37342, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4147, 1572.25, -1723.7, 28.4697, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(4148, 2268.81, 1384.94, 10.383, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4149, 2584.72, -1826.85, 3.24, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4150, 1569.67, -1723.65, 28.4163, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(4151, 2548.49, -1917.46, 7.01763, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4152, 1566.82, -1723.88, 28.4123, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(4153, 2345.88, 1384.35, 10.3808, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4154, 2579.87, -1974.9, 5.56319, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4155, 1564.01, -1724.29, 28.444, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(4156, 2355.81, 1395.39, 10.3881, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4157, 2584.5, -2031.82, 4.80561, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4158, 2587.93, -2068.45, 3.28072, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4159, 1561.17, -1724.57, 28.4502, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(4160, 1558.59, -1724.64, 28.4208, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(4161, 2557.95, -2203.24, -0.653929, 0, 0, 0, NULL, 'Liz ', 'ostern');
INSERT INTO `ostereier` (`ID`, `X`, `Y`, `Z`, `Inte`, `Dim`, `State`, `gefundenVon`, `comment`, `event`) VALUES
(4162, 2258.95, 1512.22, 16.7861, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4163, 1554.83, -1723.7, 28.3443, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(4164, 2551.64, -2129.9, 2.15951, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4165, 2268.82, 1521.25, 16.7852, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4166, 2346.15, 1521.7, 16.785, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4167, 2546.46, -2066.19, 9.7131, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4168, 2355.7, 1512.46, 16.7898, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4169, 1190.03, -150.135, 40.7736, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(4170, 2356.14, 1395.39, 23.1895, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4171, 2545.18, -2045.21, 4.06344, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4172, 2493.73, -2045.53, 7.89995, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4173, 2346.45, 1384.83, 23.1945, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4174, 2433.71, -2045.92, 12.3721, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4175, 2442.98, -2055.85, 13.118, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4176, 2479.81, -2057.22, 13.1145, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4177, 2269.29, 1384.49, 23.2052, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4178, 2514.53, -2057.67, 13.115, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4179, 2264.27, 1395.3, 23.197, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4180, 2516.24, -2043.08, 13.1168, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4181, 2258.56, 1512.23, 29.5988, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4182, 2478.69, -2042.02, 13.1207, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4183, 2443.79, -2042.21, 13.117, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4184, 2268.71, 1521.65, 29.6067, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4185, 2345.83, 1522.16, 29.5958, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4186, 2346.34, -2159.31, 13.1152, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4187, 2355.69, 1512.42, 29.5955, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4188, 2324.64, -2140.34, 13.7718, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4189, 2355.98, 1395.3, 36.0312, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4190, 2354.65, -2095.08, 13.116, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4191, 2346.36, 1384.78, 35.9849, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4192, 2378.55, -2077.89, 13.0742, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4193, 2269.26, 1384.47, 35.98, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4194, 2263.98, 1395.44, 35.9825, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4195, 2396.1, -2008.64, 13.1296, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4196, 2375.37, -2016.32, 14.6255, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4197, 2258.66, 1512.26, 42.3792, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4198, 2268.62, 1521.62, 42.3784, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4199, 2280.81, -2045.67, 13.1144, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4200, 2326.49, 1522.16, 42.3832, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4201, 2345.69, 1522.19, 42.3884, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4202, 2355.62, 1512.43, 42.3872, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4203, 2225.26, -2077.94, 13.1184, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4204, 2355.99, 1395.59, 42.3933, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4205, 2152.34, -2004.31, 13.1124, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4206, 2346.38, 1385, 42.3839, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4207, 2333.52, 1384.6, 42.385, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4208, 1983.82, -1897.73, 13.1154, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4209, 2319.87, 1384.37, 42.3862, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4210, 2269.14, 1384.62, 42.4833, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4211, -519.077, -506.348, 24.523, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(4212, 2017.8, -1885.57, 13.1206, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4213, 1674.86, -2019.71, 28.0748, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(4214, 2028.37, -1882.15, 13.118, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4215, -529.023, -505.23, 24.6163, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(4216, 2264.28, 1394.99, 42.4838, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4217, 2061.63, -1883.19, 13.1109, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4218, 2091.29, -1866.58, 13.1197, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4219, 2259, 1401.98, 42.3827, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4220, 1675.47, -2017.97, 28.0123, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(4221, 2115.49, -1874.99, 13.1129, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4222, -556.077, -504.347, 24.6823, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(4223, 2125.51, -1873.9, 13.1257, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4224, 2150.83, -1871.79, 13.1191, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4225, 1675.76, -2015.97, 28.055, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(4226, 2158.96, -1866.93, 13.1305, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4227, -618.977, -509.482, 25.5178, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(4228, 2126.02, -1829.48, 13.1222, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4229, -619.306, -532.322, 25.5234, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(4230, 2133.84, -1796.68, 13.0997, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4231, 1676.14, -2013.84, 28.0857, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(4232, 2355.35, 1504.46, 35.9837, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4233, 2356.16, 1512.04, 35.985, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4234, 2346.32, 1521.5, 35.9876, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4235, 2132.64, -1727.14, 13.1159, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4236, 2165.82, -1729.16, 13.1075, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4237, 2268.55, 1503.84, 35.9833, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4238, 2269.15, 1521.58, 35.9876, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4239, 2156.67, -1652.46, 14.6494, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4240, 2146.16, -1661.89, 14.6564, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4241, 2139.62, -1673.51, 14.6557, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4242, 1676.78, -2011.85, 28.0252, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(4243, 2054.55, -1657, 13.1174, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4244, 2047.32, -1633.69, 13.1205, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4245, 2346.6, 1402.58, 29.5963, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4246, 1677.16, -2009.98, 28.0367, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(4247, 2346.24, 1384.94, 29.5901, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4248, 2070.54, -1595.87, 13.0693, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4249, 2076.43, -1586.85, 13.0537, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4250, 2269.19, 1384.67, 29.5916, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4251, 1685.04, -2010.72, 28.0908, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(4252, 2065.09, -1584.16, 13.0464, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4253, 2264.19, 1395.12, 29.5942, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4254, 1685.13, -2012.59, 28.0927, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(4255, 2058.58, -1577.05, 13.0308, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4256, 2258.99, 1401.96, 29.5878, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4257, 2058.05, -1590.71, 13.049, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4258, 1685.05, -2014.63, 28.0696, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(4259, 2103.81, -1589.59, 13.0655, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4260, 1685.35, -2016.86, 28.095, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(4261, 1685.42, -2018.87, 28.0966, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(4262, 1685.51, -2020.79, 28.0929, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(4263, 1684.06, -2022.36, 28, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(4264, 2268.6, 1503.82, 23.1846, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4265, 2268.63, 1521.53, 23.1926, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4266, -995.122, -719.795, 35.9375, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(4267, 2345.87, 1522.03, 23.1869, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4268, -1017.66, -705.833, 32.0078, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(4269, 2355.69, 1512.52, 23.1865, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4270, 1632.94, -1951.21, 28.8619, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(4271, 2356.1, 1504.91, 23.1888, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4272, 1630.89, -1949.29, 28.8657, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(4273, 1628.83, -1947.45, 28.8635, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(4274, 1626.71, -1945.47, 28.8665, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(4275, 1624.76, -1943.71, 28.8665, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(4276, -1055.41, -697.714, 32.3516, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(4277, -1062.92, -692.407, 32.3516, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(4278, 1622.61, -1941.9, 28.8638, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(4279, 2346.63, 1402.77, 16.8976, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4280, -1090.27, -636.89, 32.0078, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(4281, 2346.4, 1385, 16.7869, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4282, -1087.28, -604.024, 32.0078, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(4283, 1973.87, -1633.95, 18.569, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4284, -1075.4, -596.959, 32.0078, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(4285, -1070.78, -598.975, 32.0078, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(4286, -1057.37, -603.054, 32.0078, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(4287, 2269.19, 1384.64, 16.7875, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4288, -1060.68, -611.191, 34.0896, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(4289, -1060.9, -626.899, 34.0896, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(4290, 2264.21, 1395.31, 16.7916, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4291, 2258.95, 1401.82, 16.7812, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4292, 1976.4, -1671.2, 18.5456, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4293, 1980.79, -1717.15, 17.0288, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4294, 1694.55, -1933.11, 14.5589, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(4295, 1970.67, -1714.49, 17.0603, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4296, 2355.97, 1512.17, 10.3845, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4297, 1687.27, -1932.85, 14.5589, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(4298, 1687.34, -1943.03, 14.5589, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(4299, 2346.19, 1521.73, 10.3978, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4300, 1694.93, -1942.98, 14.5589, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(4301, 2269.15, 1522.19, 10.3939, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4302, 1888.1, -1737.24, 12.9047, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4303, 1836.22, -1726.17, 12.9257, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4304, 1835.81, -1711.1, 12.9446, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4305, 1834.01, -1586.72, 13.1689, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4306, 1836.19, -1583.55, 13.1844, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4307, 1858.12, -1558.33, 13.1419, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4308, 1886.62, -1555.42, 12.9488, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4309, -1181.2, -1142.56, 129.219, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(4310, 1906, -1544.65, 12.4024, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4311, -1185.36, -1135.92, 129.219, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(4312, 1913.35, -1542.58, 12.5439, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4313, 1935.88, -1536.91, 13.0654, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4314, 2482.57, 1360.48, 10.3878, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4315, 1942.82, -1536.9, 13.0674, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4316, -1155.97, -1133.79, 129.219, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(4317, -1141.67, -1133.78, 129.219, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(4318, 2492.38, 1360.58, 10.39, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4319, 1999.59, -1538.93, 10.7263, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4320, 2011.16, -1544.89, 10.9586, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4321, 2026.45, -1572.43, 12.4989, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4322, 2502.4, 1360.51, 10.397, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4323, -1139.44, -1084.57, 129.219, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(4324, -1127.96, -1084.54, 129.219, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(4325, 2512.1, 1360.79, 10.3981, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4326, -1094.32, -1084.49, 129.219, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(4327, -1079.94, -1084.42, 129.219, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(4328, 2512.83, 1325.97, 10.3866, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4329, -1068.1, -1135.07, 129.219, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(4330, -1065.82, -1155.73, 129.219, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(4331, 2502.7, 1325.95, 10.3868, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4332, -1073.76, -1157.51, 129.219, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(4333, 1762.59, -1695.03, 12.9994, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4334, 2492.6, 1326, 10.3834, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4335, 1763.14, -1689.14, 12.9859, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4336, 2482.92, 1325.98, 10.3869, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4337, -1036.35, -1182.13, 129.219, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(4338, -1026.16, -1182.06, 129.219, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(4339, 1809.63, -1713.13, 13.1162, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4340, 2460.13, 1324.74, 10.3905, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4341, -1061.3, -1205.58, 129.756, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(4342, 2456.61, 1324.76, 10.3955, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4343, 1604.62, -1694.79, 13.1197, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4344, 2507.55, 1242.9, 10.3947, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4345, 1568.5, -1528.43, 13.1126, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4346, -1175.4, -1169.74, 129.219, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(4347, -1182.6, -1169.85, 129.219, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(4348, -1191.73, -1170.1, 129.219, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(4349, -1198.39, -1169.85, 129.219, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(4350, -1205.33, -1169.78, 129.219, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(4351, 1415.62, -1490.01, 20.0081, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4352, 1406.39, -1472.22, 20.0034, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4353, 1416.16, -1457.51, 19.998, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4354, 2515.91, 1142.75, 13.8348, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4355, 1428.36, -1453.22, 19.985, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4356, 1435.64, -1471.97, 19.9998, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4357, 2516.43, 1128.72, 13.8374, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4358, 1833.98, -1690.49, 13.1484, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(4359, 2478.76, 1128.17, 13.8397, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4360, 2478.3, 1142.21, 13.8331, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4361, 1474.23, -1371.89, 11.4483, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4362, 1474.36, -1352.56, 11.4499, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4363, -1069.76, -1299.26, 129.219, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(4364, -1077.69, -1300.21, 129.219, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(4365, 2516.04, 1154.62, 21.5848, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4366, 2516.37, 1144.62, 21.5842, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4367, 1469.28, -1266.94, 14.1388, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4368, 1469.52, -1262.25, 14.1376, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4369, 2501.64, 1154.58, 21.5872, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4370, 1477.15, -1172.8, 23.6398, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4371, 2478.68, 1144.28, 21.671, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4372, 1497.61, -1173.76, 23.6508, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4373, 1513.77, -1200.35, 23.1656, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4374, 2478.48, 1154.44, 21.5884, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4375, 2496.42, 1154.79, 21.5871, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4376, 1513.8, -1249.5, 14.1199, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4377, 2499.49, 1150.18, 21.6022, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4378, 1514.75, -1253.39, 14.1247, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4379, 1522.06, -1249.88, 14.0762, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4380, 2516.36, 1115.84, 10.3852, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4381, 1595.41, -1142.13, 23.8435, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4382, 2516.09, 1107.46, 10.3878, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4383, 1655.13, -1115.54, 23.5067, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4384, 2516.22, 1098.46, 10.3892, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4385, 1687.94, -1103.79, 23.7454, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4386, 2516.12, 1088.63, 10.3858, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4387, 1703.65, -1093.5, 23.6478, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4388, 1719.17, -1093.36, 23.6399, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4389, 1735.64, -1093.47, 23.6422, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4390, 1766.28, -1091.89, 23.6462, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4391, 1788.52, -1092.98, 23.6432, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4392, 1807.63, -1091, 23.6565, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4393, 2501.33, 1126.5, 10.43, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4394, 1738.21, -1030.97, 23.5295, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4395, 1677.57, -1036.67, 23.4688, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4396, 1623.26, -1039.69, 23.4687, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4397, 2539.69, 1024.88, 10.3916, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4398, 1615.24, -1026.68, 23.4637, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4399, 2546.81, 1024.93, 10.3825, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4400, 2549.51, 1042.86, 10.4181, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4401, 1599.4, -1055.04, 23.4725, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4402, 1596.89, -1093.95, 23.7645, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4403, 2549.69, 1052.41, 10.455, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4404, 2576.68, 1057.04, 10.387, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4405, 2585.88, 1057.21, 10.3965, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4406, 1555.69, -1032.43, 23.4763, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4407, 1550.26, -1037.54, 23.8356, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4408, 2638.64, 1064.01, 10.3805, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4409, 2656, 1081.1, 10.3841, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4410, 1348.36, -910.768, 37.0944, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4411, 1351.14, -885.84, 37.7209, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4412, 2656.51, 1141.78, 10.3804, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4413, 788.689, -1324.51, -0.507812, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(4414, 2618.79, 1142.49, 10.4371, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4415, 1305.63, -875.812, 39.1335, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4416, 1304.98, -852, 39.1402, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4417, 857.067, -1387.18, -0.507812, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(4418, -37.0234, -91.4766, 1003.55, 18, 6, 0, NULL, 'Maxx ', 'ostern'),
(4419, 1340.92, -855.373, 39.0691, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4420, -36.5381, -82.417, 1003.55, 18, 6, 0, NULL, 'Maxx ', 'ostern'),
(4421, -37.2998, -74.6504, 1003.55, 18, 6, 0, NULL, 'Maxx ', 'ostern'),
(4422, -30.4336, -75.4121, 1003.55, 18, 6, 0, NULL, 'Maxx ', 'ostern'),
(4423, -26.2803, -75.9453, 1003.55, 18, 6, 0, NULL, 'Maxx ', 'ostern'),
(4424, 1224.94, -876.989, 42.6567, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4425, -22.3057, -75.7568, 1003.55, 18, 6, 0, NULL, 'Maxx ', 'ostern'),
(4426, 1170.41, -877.577, 43.0008, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4427, -18.6621, -75.9814, 1003.55, 18, 6, 0, NULL, 'Maxx ', 'ostern'),
(4428, -14.8672, -91.8467, 1003.55, 18, 6, 0, NULL, 'Maxx ', 'ostern'),
(4429, 1171.34, -928.237, 43.0113, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4430, -27.1553, -91.7588, 1003.55, 18, 6, 0, NULL, 'Maxx ', 'ostern'),
(4431, 1205.16, -925.01, 42.7269, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4432, 1079.46, -935.652, 42.4623, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4433, 1057.91, -921.608, 42.4326, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4434, 1385.4, -1945.56, 9.52274, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(4435, 1070.55, -889.382, 42.8313, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4436, 1130.01, -873.159, 42.9579, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4437, 2626.65, 1191.56, 10.8203, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4438, 1102.2, -872.537, 42.9841, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4439, 1011.41, -894.72, 41.8247, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4440, 999.321, -894.374, 41.8348, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4441, 2624.56, 1193.91, 26.9233, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4442, 2631.76, 1187.43, 26.9182, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4443, 1695.86, -1970.04, 8.82496, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(4444, 2658.6, 1186.71, 26.9182, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4445, 2665.8, 1193.91, 26.9233, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4446, 2665.8, 1227.96, 26.9233, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4447, 2658.6, 1235.15, 26.9182, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4448, 2631.76, 1235.15, 26.9182, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4449, 2624.56, 1227.96, 26.9233, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4450, 776.304, -1018.85, 25.9261, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4451, 777.461, -1013.03, 25.9267, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4452, 432.713, -1292.42, 14.7084, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4453, 414.896, -1302.19, 14.5604, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4454, 2561.87, 1234.05, 10.9586, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4455, 2563.58, 1214.15, 10.9586, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4456, 342.136, -1336.94, 14.07, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4457, 332.241, -1339.5, 14.085, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4458, 389.635, -2032.11, 7.83594, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(4459, 2566.87, 1204, 14.3426, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4460, 296.396, -1361.74, 13.6755, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4461, 406.689, -2062.49, 7.83594, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(4462, 2566.71, 1242.21, 14.3426, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4463, 197.454, -1457.85, 12.5281, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4464, 395.883, -2073.22, 10.5017, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(4465, 317.674, -1771.25, 4.28144, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4466, 2544.12, 1299.08, 10.3857, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4467, 300.241, -1771.6, 4.09927, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4468, 265.356, -1770.33, 3.94495, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4469, 242.599, -1770.52, 3.96815, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4470, 2555.15, 1299.12, 10.3805, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4471, 197.116, -1770.15, 3.85722, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4472, 174.23, -1769.44, 4.01447, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4473, 2548.49, 1299.59, 10.3807, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4474, 2550.99, 1299.64, 10.3861, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4475, 2563.49, 1327.73, 10.3935, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4476, 2591.55, 1327.89, 10.3883, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4477, 2542.35, 1310.99, 10.6719, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4478, 1113.61, 2402.14, 10.9953, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4479, 1113.2, 2377.85, 10.9953, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4480, 1118.12, 2371.47, 11.0005, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4481, 1116.88, 2366.49, 11.0005, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4482, 1122.73, 2348.61, 10.9953, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4483, 1122.53, 2359.92, 16.5736, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4484, 1121.74, 2353.66, 16.5736, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4485, 1117.37, 2368.16, 16.5736, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4486, 1113.11, 2392.35, 16.5736, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4487, 1098.65, 2347.75, 16.5736, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4488, 1112.8, 2400.67, 16.5736, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4489, 1098.68, 2358.05, 16.5736, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4490, 1098.68, 2360.89, 16.5736, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4491, 1098.7, 2370.73, 16.5736, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4492, 1098.95, 2374.22, 16.5736, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4493, 1098.95, 2384.61, 16.5736, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4494, 1098.45, 2391.84, 16.5736, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4495, 1098.73, 2402.45, 16.5736, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4496, 316.931, -134.028, 999.602, 7, 0, 0, NULL, 'Maxx ', 'ostern'),
(4497, 308.146, -131.384, 1004.05, 7, 0, 0, NULL, 'Maxx ', 'ostern'),
(4498, 316.314, -142.992, 1004.06, 7, 0, 0, NULL, 'Maxx ', 'ostern'),
(4499, 317.063, -136.386, 999.602, 7, 0, 0, NULL, 'Maxx ', 'ostern'),
(4500, 390.43, -2025.17, 7.83594, 0, 0, 0, NULL, 'DarkCitizen ', 'ostern'),
(4501, 1190.16, 2056.74, 8.936, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4502, 1190.35, 2046.69, 8.88322, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4503, 1240.18, 2044.65, 7.69726, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4504, 1244.69, 2057.21, 8.94071, 0, 0, 0, NULL, 'Liz ', 'ostern'),
(4505, -394.329, -1152.2, 69.505, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(4506, -395.383, -1146.31, 69.3432, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(4507, -385.388, -1153.81, 69.5325, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(4508, -384.79, -1147.59, 69.3579, 0, 0, 0, NULL, 'geramy ', 'ostern'),
(4513, 1338.68, -1798.29, 13.5547, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4514, 1339.07, -1796.45, 13.5547, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4515, -37.3389, -91.6787, 1003.55, 18, 2, 0, NULL, 'Maxx ', 'ostern'),
(4516, -37.3027, -74.6416, 1003.55, 18, 2, 0, NULL, 'Maxx ', 'ostern'),
(4517, -14.877, -74.6416, 1003.55, 18, 2, 0, NULL, 'Maxx ', 'ostern'),
(4518, -14.9014, -90.9766, 1003.55, 18, 2, 0, NULL, 'Maxx ', 'ostern'),
(4519, -20.0693, -91.8076, 1003.55, 18, 2, 0, NULL, 'Maxx ', 'ostern'),
(4520, -26.9707, -91.7939, 1003.55, 18, 2, 0, NULL, 'Maxx ', 'ostern'),
(4521, -25.9609, -75.7139, 1003.55, 18, 2, 0, NULL, 'Maxx ', 'ostern'),
(4522, 1363.66, -1743.02, 13.5469, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4523, 1406.03, -1750.44, 14.0469, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4524, 1437.82, -1748.6, 14.0469, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4525, 1447.23, -1749.18, 14.0469, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4526, 1403.66, -1707.42, 13.5469, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4527, 1345.98, -1697.31, 13.5945, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4528, 1345.98, -1698.92, 13.5909, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4529, 1346.03, -1700.08, 13.5824, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4530, 1346.08, -1701.35, 13.5823, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4531, 1346.15, -1702.85, 13.5822, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4532, 1346.21, -1704.74, 13.5819, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4533, 1346.19, -1707.83, 13.5843, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4534, 1346.18, -1709.46, 13.583, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4535, 1346.16, -1711.55, 13.5814, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4536, 1346.14, -1713.5, 13.5799, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4537, 1346.12, -1715.36, 13.5784, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4538, 1346.1, -1716.84, 13.5772, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4539, 1346.08, -1718.84, 13.5757, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4540, 1346.06, -1720.48, 13.5744, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4541, 1531.43, 1675.63, 10.8203, 0, 0, 0, NULL, 'Maxx ', 'ostern'),
(4542, 1388.1, 1732.59, 10.8203, 0, 0, 0, NULL, 'Maxx ', 'ostern');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `players`
--

CREATE TABLE IF NOT EXISTS `players` (
`ID` int(11) NOT NULL,
  `UUID` varchar(128) DEFAULT NULL,
  `Nickname` varchar(250) NOT NULL,
  `Passwort` varchar(600) NOT NULL,
  `EMail` varchar(250) NOT NULL,
  `Geb_T` int(11) NOT NULL,
  `Geb_M` int(11) NOT NULL,
  `Geb_Y` int(11) NOT NULL,
  `werber` text NOT NULL,
  `Salt` varchar(250) NOT NULL,
  `Serial` varchar(250) NOT NULL,
  `IP` varchar(250) NOT NULL,
  `RegDat` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `AktiveDays` int(11) NOT NULL DEFAULT '0',
  `LastLogin` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `LastUpdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Urlaub_Until` int(11) NOT NULL DEFAULT '0',
  `nickchange` int(11) NOT NULL DEFAULT '0',
  `force_nickchange` int(11) NOT NULL DEFAULT '0',
  `isDeveloper` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=56578 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `premium`
--

CREATE TABLE IF NOT EXISTS `premium` (
`ID` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `PremiumUntil` bigint(20) NOT NULL DEFAULT '0',
  `PremiumGutScheine` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=56216 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `prestige`
--

CREATE TABLE IF NOT EXISTS `prestige` (
`ID` int(11) NOT NULL,
  `x` float NOT NULL,
  `y` float NOT NULL,
  `z` float NOT NULL,
  `stufe` int(11) NOT NULL DEFAULT '1',
  `name` varchar(255) NOT NULL,
  `preis` float NOT NULL,
  `stufengeld` float NOT NULL,
  `grundpreis` float NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Daten für Tabelle `prestige`
--

INSERT INTO `prestige` (`ID`, `x`, `y`, `z`, `stufe`, `name`, `preis`, `stufengeld`, `grundpreis`) VALUES
(3, 1479.54, -1617.26, 14.2, 13, 'Stadtpark Siegessäule', 19084200, 2765510, 800000),
(4, 2316.44, 2363.64, 10.8203, 1, 'Antiker Brunnen (LVPD)', 350000, 350000, 350000),
(5, 1573.92, -1329.1, 16.4844, 4, 'Star Tower', 3683410, 1012350, 850000),
(6, 2096.26, 1285.05, 10.8203, 2, 'Monument ', 917487, 467487, 450000),
(7, 2009.25, 1544.67, 12.5529, 10, 'Piratenschiff ', 7388890, 1147510, 500000),
(8, 384.474, -2028.55, 7.83594, 8, 'Das Riesenrad', 3661250, 627150, 350000),
(9, 2323.79, 1283.3, 97.5352, 2, 'Pyramide ', 2038860, 1038860, 1000000),
(10, 927.96, -1209.37, 16.9564, 13, 'Filmstudio ', 14313100, 2074130, 600000),
(11, -367.817, 1581.48, 76.108, 12, 'Big Ear', 22438200, 3302260, 1100000),
(12, 1428.85, -809.517, 76.4837, 14, 'Vinewood Sign', 11140900, 1598760, 400000),
(13, 1969.17, -1197.42, 18.7061, 15, 'Glenpark ', 14621000, 2087470, 450000),
(14, 1918.15, -1409.29, 13.5703, 16, 'Skaterpark ', 5684090, 810448, 150000),
(15, 1129.13, -1488.45, 22.769, 17, 'Mall ', 33155900, 4735550, 750000),
(16, 2184.31, 1114.27, 12.6484, 1, 'Come-A-Lot ', 1500000, 1655350, 1500000),
(17, 3106.76, -2145.43, 30.8122, 8, 'Bohrinsel ', 4707320, 806336, 450000),
(18, -2696.43, 1933.87, 217.274, 10, 'Golden Gate Bridge', 147777000, 22950200, 10000000),
(19, -2232.24, -1738.11, 480.84, 1, 'Mount Chilliad', 2500000, 7505140, 2500000);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rechte`
--

CREATE TABLE IF NOT EXISTS `rechte` (
`ID` int(11) NOT NULL,
  `Nickname` varchar(250) CHARACTER SET latin1 NOT NULL,
  `AllLeader` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=32357 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ruhezonen`
--

CREATE TABLE IF NOT EXISTS `ruhezonen` (
`ID` int(11) NOT NULL,
  `leftX` float NOT NULL,
  `buttonY` float NOT NULL,
  `sizeX` float NOT NULL,
  `sizeY` float NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Daten für Tabelle `ruhezonen`
--

INSERT INTO `ruhezonen` (`ID`, `leftX`, `buttonY`, `sizeX`, `sizeY`) VALUES
(1, 1409.26, -1775.27, 162.734, 180),
(6, 1711.76, -1881.09, 96.0605, 38.5078);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `servermessage`
--

CREATE TABLE IF NOT EXISTS `servermessage` (
`ID` int(11) NOT NULL,
  `VonName` varchar(255) NOT NULL DEFAULT 'none',
  `Message` text NOT NULL,
  `Time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Nickname` varchar(255) NOT NULL DEFAULT 'none'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=315762 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `serversettings`
--

CREATE TABLE IF NOT EXISTS `serversettings` (
`ID` int(255) NOT NULL,
  `Name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `Wert` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci AUTO_INCREMENT=18 ;

--
-- Daten für Tabelle `serversettings`
--

INSERT INTO `serversettings` (`ID`, `Name`, `Wert`) VALUES
(1, 'drogenpreis', '5'),
(2, 'Jackpot', '100000'),
(3, 'Max_Users', '0'),
(6, 'Version', '3.4.1'),
(8, 'matspreis', '0.97'),
(9, 'tankpreis', '1.572'),
(10, 'sozialabgabesatz', '20'),
(11, 'steuersatz', '25'),
(12, 'Ueberweisungssteuer', '0'),
(13, 'atommuell', '0'),
(14, 'regenlevel', '0'),
(16, 'spielerDesMonats', 'juli2013.png'),
(17, 'DailyReset', '1414029776');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `sprunk`
--

CREATE TABLE IF NOT EXISTS `sprunk` (
`ID` int(11) NOT NULL,
  `X` float NOT NULL,
  `Y` float NOT NULL,
  `Z` float NOT NULL,
  `Rot` float NOT NULL,
  `Kommentar` text
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=50 ;

--
-- Daten für Tabelle `sprunk`
--

INSERT INTO `sprunk` (`ID`, `X`, `Y`, `Z`, `Rot`, `Kommentar`) VALUES
(1, 1729.72, -1943.86, 13.5687, 0.195007, 'ls bahnhof'),
(2, -16.0938, -90.8506, 1003.55, 185.334, '24/7'),
(3, -17.6758, -90.9707, 1003.55, 185.021, '24/7'),
(4, -2119.4, -422.183, 35.5312, 247.688, 'arenasf'),
(5, -2119.71, -423.289, 35.5312, 253.011, 'arenasf'),
(6, 374.962, 188.236, 1008.39, 8.31952, 'stadthalle'),
(7, -1981.6, 142.689, 27.6875, 275.912, 'sfbahnhof'),
(8, 351.646, 205.983, 1008.38, 89.8119, 'stadthalle'),
(9, 371.67, 177.713, 1019.98, 356.46, 'stadthalle'),
(10, 361.656, 159.358, 1008.38, 176.918, 'stadthalle'),
(11, 243.684, 64.2754, 1003.64, 91.3994, 'sek'),
(12, -2419.58, 984.561, 45.2969, 92.0037, 'sf'),
(13, -2419.55, 985.95, 45.2969, 92.0037, 'sf'),
(14, -2068.66, -397.521, 35.5312, 185.636, 'sf'),
(15, -2011.09, -397.522, 35.5312, 176.863, 'sf'),
(16, -2039.84, -397.522, 35.5312, 180.939, 'sf'),
(17, -2005.45, -490.869, 35.5312, 359.514, 'sf'),
(18, -2034.29, -490.868, 35.5312, 11.1101, 'sf'),
(19, -2063.14, -490.868, 35.5312, 6.09476, 'sf'),
(20, -2091.93, -490.869, 35.5312, 10.1707, 'sf'),
(21, -1455.25, 2592.41, 55.8359, 187.509, 'sf-lv'),
(22, -252.929, 2598.02, 62.8594, 87.9551, 'sf-lv'),
(23, -252.992, 2599.76, 62.8594, 88.8945, 'sf-lv'),
(24, 999.002, -914.801, 42.3281, 273.012, 'lstanke'),
(25, -14.6768, 1176.17, 19.5634, 186.878, 'lstanke'),
(26, 200.2, -107.645, 1.55127, 269.381, 'blueberry'),
(27, 495.918, -23.4824, 1000.68, 184.829, 'alhambra'),
(28, 2156.58, 1607.96, 999.969, 94.3822, 'casino'),
(29, 2156.7, 1606.75, 999.972, 94.3822, 'casino'),
(30, 2202.4, 1617.75, 999.977, 183.659, 'casino'),
(31, 2209.12, 1607.18, 999.969, 263.558, 'casino'),
(32, 2209.3, 1620.47, 999.983, 3.1998, 'casino'),
(33, 2222.99, 1606.85, 999.976, 89.0318, 'casino'),
(34, 2223.11, 1602.64, 999.973, 89.0318, 'casino'),
(35, 1153.91, -1460.85, 15.7969, 266.672, 'casino'),
(36, 330.772, 177.76, 1019.99, 3.14487, 'stadthalle'),
(37, 332.016, 177.76, 1019.99, 3.14487, 'stadthalle'),
(38, 2326.06, -1645.95, 14.827, 7.06158, 'grove'),
(39, 1929.55, -1772.44, 13.5469, 94.1735, 'lstanke'),
(40, 501.8, -2.21875, 1000.68, 2.69992, 'alhambra'),
(41, 500.596, -2.10742, 1000.68, 2.69992, 'alhambra'),
(42, 2271.71, -77.2119, 26.5812, 0.65094, 'Mafiastadt - Snackautomat'),
(43, 1519.33, 1055.21, 10.8203, 269.216, 'LV kakagawa'),
(44, 2845.8, 1294.3, 11.3906, 2.67795, 'LV Bahnhof'),
(45, 2647.74, 1128.91, 11.1797, 6.75397, 'Snack LV SO Tank'),
(46, -2229.19, 287.164, 35.3203, 180.692, 'Snack SF Über der Baustelle'),
(47, 2060.19, -1898.46, 13.5538, 0.211487, 'Sprunk LS naehe PizzaStack'),
(48, 2480.81, -1958.52, 13.583, 181.967, 'Sprunk kl. Waffen Snack'),
(49, 2224.28, -1153.42, 1025.8, 270.77, '');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tapp_tictactoe`
--

CREATE TABLE IF NOT EXISTS `tapp_tictactoe` (
`ID` int(11) NOT NULL,
  `Nickname` varchar(250) CHARACTER SET latin1 NOT NULL,
  `Gegner` varchar(250) CHARACTER SET latin1 NOT NULL,
  `Spielstand` varchar(50) NOT NULL DEFAULT '0|0|0|0|0|0|0|0|0',
  `Winner` int(11) NOT NULL DEFAULT '0',
  `State` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1023 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `taxipreise`
--

CREATE TABLE IF NOT EXISTS `taxipreise` (
`ID` int(11) NOT NULL,
  `timezone` int(11) NOT NULL,
  `tarifzone` int(11) NOT NULL,
  `preis` float NOT NULL DEFAULT '10'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Daten für Tabelle `taxipreise`
--

INSERT INTO `taxipreise` (`ID`, `timezone`, `tarifzone`, `preis`) VALUES
(1, 1, 1, 1.5),
(2, 1, 2, 15),
(3, 1, 3, 50),
(4, 2, 1, 2),
(5, 2, 2, 20),
(6, 2, 3, 75),
(7, 3, 1, 1.5),
(8, 3, 2, 25),
(9, 3, 3, 85),
(10, 0, 0, 5);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `terratapps`
--

CREATE TABLE IF NOT EXISTS `terratapps` (
`ID` int(11) NOT NULL,
  `Nickname` varchar(255) NOT NULL,
  `Friendlist` int(11) NOT NULL DEFAULT '0',
  `GPS` int(11) NOT NULL DEFAULT '0',
  `Stopuhr` int(11) NOT NULL DEFAULT '0',
  `Blitzermelder` int(11) NOT NULL DEFAULT '0',
  `Kompass` int(11) NOT NULL DEFAULT '0',
  `EMail` int(11) NOT NULL DEFAULT '0',
  `Notizblock` int(11) NOT NULL DEFAULT '0',
  `Colorpicker` int(11) NOT NULL DEFAULT '0',
  `TicTacToe` int(11) NOT NULL DEFAULT '0',
  `MineSweeper` int(1) NOT NULL DEFAULT '0',
  `OnlineBanking` int(1) NOT NULL DEFAULT '0',
  `OnlineSchutz` int(1) NOT NULL DEFAULT '0',
  `OnlineSchutzUntil` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=51478 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `timeban`
--

CREATE TABLE IF NOT EXISTS `timeban` (
`ID` int(11) NOT NULL,
  `Nickname` varchar(50) NOT NULL,
  `Grund` text NOT NULL,
  `Admin` varchar(50) NOT NULL DEFAULT 'none',
  `Minuten` int(11) NOT NULL DEFAULT '30',
  `Serial` varchar(255) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1714 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tlt_friendlist`
--

CREATE TABLE IF NOT EXISTS `tlt_friendlist` (
  `Nickname` varchar(255) NOT NULL,
  `Friendname` varchar(255) NOT NULL DEFAULT 'noname',
`ID` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17565 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tlt_friendrequest`
--

CREATE TABLE IF NOT EXISTS `tlt_friendrequest` (
  `Fromname` varchar(255) NOT NULL,
  `Toname` varchar(255) NOT NULL,
`ID` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11136 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tombupot`
--

CREATE TABLE IF NOT EXISTS `tombupot` (
`ID` int(11) NOT NULL,
  `Nickname` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `top_user_daily`
--

CREATE TABLE IF NOT EXISTS `top_user_daily` (
`ID` int(11) NOT NULL,
  `date` date NOT NULL,
  `user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `userdata`
--

CREATE TABLE IF NOT EXISTS `userdata` (
`ID` int(11) NOT NULL,
  `Nickname` varchar(255) NOT NULL,
  `AdminLVL` int(11) NOT NULL DEFAULT '0',
  `SupportLVL` int(11) NOT NULL DEFAULT '0',
  `Spawn` int(11) NOT NULL DEFAULT '0',
  `PremiumSpawn` int(11) NOT NULL DEFAULT '0',
  `Skin` int(11) NOT NULL DEFAULT '26',
  `FrakSkin` int(11) NOT NULL DEFAULT '0',
  `Fraktion` int(11) NOT NULL DEFAULT '0',
  `Fraktionsrang` int(11) NOT NULL DEFAULT '0',
  `Tode` int(11) NOT NULL DEFAULT '0',
  `TodZeit` int(11) NOT NULL DEFAULT '0',
  `TodeLast` int(11) NOT NULL DEFAULT '0',
  `PlayTime` int(11) NOT NULL DEFAULT '0',
  `Bank` float NOT NULL DEFAULT '50000',
  `Geld` float NOT NULL DEFAULT '5000',
  `paydaygehalt` int(11) NOT NULL DEFAULT '0',
  `Job` int(11) NOT NULL DEFAULT '0',
  `Telefonnummer` int(11) NOT NULL DEFAULT '0',
  `Wanteds` int(11) NOT NULL DEFAULT '0',
  `Warn` int(11) NOT NULL DEFAULT '0',
  `Stvo` int(11) NOT NULL DEFAULT '0',
  `Knastzeit` int(11) NOT NULL DEFAULT '0',
  `lastKnastzeit` int(11) NOT NULL DEFAULT '0',
  `Kaution` float NOT NULL DEFAULT '0',
  `VehSlots` int(11) NOT NULL DEFAULT '1',
  `tutorial_gui` int(11) NOT NULL DEFAULT '0',
  `fisheslasthour` int(11) NOT NULL DEFAULT '0',
  `hkey` int(11) NOT NULL DEFAULT '0',
  `newhkey` int(11) NOT NULL DEFAULT '0',
  `kopfgeld` float NOT NULL DEFAULT '0',
  `bizKey` int(11) NOT NULL DEFAULT '0',
  `ingamespenden` float NOT NULL DEFAULT '0',
  `werbernum` int(11) NOT NULL DEFAULT '0',
  `stvoFreePayDays` int(11) NOT NULL DEFAULT '0',
  `resetWeaponsAtNextLogin` int(11) NOT NULL DEFAULT '0',
  `verheiratet` int(11) NOT NULL DEFAULT '0',
  `schutzgeld` int(11) NOT NULL DEFAULT '0',
  `AktiveDays` int(11) NOT NULL DEFAULT '0',
  `Hufeisen` int(11) NOT NULL DEFAULT '0',
  `tbans` int(11) NOT NULL DEFAULT '0',
  `tban_reason1` varchar(255) NOT NULL DEFAULT 'no_reason',
  `alkaknast` int(11) NOT NULL DEFAULT '0',
  `mussAlka` int(11) NOT NULL DEFAULT '0',
  `prestigeKey` int(11) NOT NULL DEFAULT '0',
  `ueberweisungssumme` float NOT NULL DEFAULT '0',
  `speedtank` int(11) NOT NULL DEFAULT '0',
  `versicherung` int(11) NOT NULL DEFAULT '0',
  `fuehrerscheinlooser` int(11) NOT NULL DEFAULT '0',
  `stvoprostunde` float NOT NULL DEFAULT '0',
  `lebensversicherung` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=56518 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `vehicles`
--

CREATE TABLE IF NOT EXISTS `vehicles` (
`ID` int(11) NOT NULL,
  `Besitzer` varchar(255) NOT NULL DEFAULT '0',
  `Model` int(11) NOT NULL DEFAULT '0',
  `SlotID` int(11) NOT NULL DEFAULT '0',
  `SpawnX` float NOT NULL DEFAULT '0',
  `SpawnY` float NOT NULL DEFAULT '0',
  `SpawnZ` float NOT NULL DEFAULT '0',
  `SpawnRX` float NOT NULL DEFAULT '0',
  `SpawnRY` float NOT NULL DEFAULT '0',
  `SpawnRZ` float NOT NULL DEFAULT '0',
  `Colors` varchar(255) NOT NULL DEFAULT '0|0|0|0',
  `premColors` varchar(255) NOT NULL DEFAULT '-1',
  `Tuning` varchar(255) NOT NULL DEFAULT '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0',
  `paintjob` int(11) NOT NULL DEFAULT '3',
  `Tank` float NOT NULL DEFAULT '100',
  `fahrzeugalter` int(11) NOT NULL DEFAULT '0',
  `abgeschleppt` int(11) NOT NULL DEFAULT '0',
  `kaufpreis` float NOT NULL DEFAULT '0',
  `Lichterfarbe` varchar(255) NOT NULL DEFAULT '255|255|255',
  `no_handel` int(11) NOT NULL DEFAULT '0',
  `kmstand` float NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=86109 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `view_duty_cops_date`
--

CREATE TABLE IF NOT EXISTS `view_duty_cops_date` (
  `a` int(11) NOT NULL,
  `b` int(11) NOT NULL,
  `c` int(11) NOT NULL,
  `d` int(11) NOT NULL,
  `e` int(11) NOT NULL,
  `f` int(11) NOT NULL,
  `g` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `warns`
--

CREATE TABLE IF NOT EXISTS `warns` (
`ID` int(11) NOT NULL,
  `Datum` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Nickname` varchar(255) NOT NULL,
  `Admin` varchar(255) NOT NULL,
  `Grund` text NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1371 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `werbungen`
--

CREATE TABLE IF NOT EXISTS `werbungen` (
`ID` int(11) NOT NULL,
  `picName` varchar(255) NOT NULL,
  `DatumBis` date NOT NULL,
  `animation` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Daten für Tabelle `werbungen`
--



-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `whitelist`
--

CREATE TABLE IF NOT EXISTS `whitelist` (
`ID` int(11) NOT NULL,
  `Nickname` varchar(250) NOT NULL,
  `ANTIHIGHPING` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `zeugnis`
--

CREATE TABLE IF NOT EXISTS `zeugnis` (
`ID` int(11) NOT NULL,
  `Nickname` varchar(255) NOT NULL,
  `NAME_orientierung` int(11) NOT NULL DEFAULT '0',
  `NAME_theorie_Beamte` int(11) NOT NULL DEFAULT '0',
  `NAME_Gelaendefahr` int(11) NOT NULL DEFAULT '0',
  `NAME_sozial` int(11) NOT NULL DEFAULT '0',
  `NAME_Waffenumgang` int(11) NOT NULL DEFAULT '0',
  `NAME_spezFahrtest` int(11) NOT NULL DEFAULT '0',
  `NAME_Strategisch` int(11) NOT NULL DEFAULT '0',
  `NAME_praktisch_Beamte` int(11) NOT NULL DEFAULT '0',
  `refresh` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=34182 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `_dateview_duty_cops`
--

CREATE TABLE IF NOT EXISTS `_dateview_duty_cops` (
  `Nickname` varchar(250) NOT NULL,
  `ONLINE` decimal(32,0) DEFAULT NULL,
  `DUTY` decimal(32,0) DEFAULT NULL,
  `INNENDIENST` decimal(32,0) DEFAULT NULL,
  `ID_ONLINE_QUOTE` decimal(39,4) DEFAULT NULL,
  `ID_DUTY_QUOTE` decimal(39,4) DEFAULT NULL,
  `DUTY_ONLINE_QUOTE` decimal(36,4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `_dateview_duty_cops`
--

INSERT INTO `_dateview_duty_cops` (`Nickname`, `ONLINE`, `DUTY`, `INNENDIENST`, `ID_ONLINE_QUOTE`, `ID_DUTY_QUOTE`, `DUTY_ONLINE_QUOTE`) VALUES
('Achhylles', '127515', '92540', '20765', '16.2844', '22.4389', '0.7257'),
('AzeR', '4050', '3765', '715', '17.6543', '18.9907', '0.9296'),
('Blacko', '33575', '23205', '7015', '20.8935', '30.2306', '0.6911'),
('BlueSpartan', '445', '445', '0', '0.0000', '0.0000', '1.0000'),
('bonjourno', '480', '420', '0', '0.0000', '0.0000', '0.8750'),
('BreakNNeck', '57220', '33805', '8130', '14.2083', '24.0497', '0.5908'),
('BroS', '67730', '60930', '20735', '30.6142', '34.0309', '0.8996'),
('BxB', '17140', '15465', '7390', '43.1155', '47.7853', '0.9023'),
('cedroecc', '25960', '16470', '5150', '19.8382', '31.2690', '0.6344'),
('Cheeseknocker', '116075', '102535', '29565', '25.4706', '28.8341', '0.8834'),
('Daniel', '151605', '114195', '22375', '14.7587', '19.5937', '0.7532'),
('DarkCitizen', '14740', '9180', '3030', '20.5563', '33.0065', '0.6228'),
('Dash', '14255', '12365', '5120', '35.9172', '41.4072', '0.8674'),
('DerLucas', '40010', '33655', '10925', '27.3057', '32.4617', '0.8412'),
('DerPuDDing', '4870', '4395', '2575', '52.8747', '58.5893', '0.9025'),
('Dexter', '9045', '8095', '2060', '22.7750', '25.4478', '0.8950'),
('Dino1003', '20505', '19555', '3595', '17.5323', '18.3840', '0.9537'),
('Doody', '70965', '50525', '2505', '3.5299', '4.9579', '0.7120'),
('ElBarto', '57790', '49295', '6405', '11.0832', '12.9932', '0.8530'),
('Faris', '50780', '40060', '13335', '26.2603', '33.2876', '0.7889'),
('Floawesome', '29000', '22575', '5665', '19.5345', '25.0941', '0.7784'),
('Frontaltaube', '3080', '2240', '930', '30.1948', '41.5179', '0.7273'),
('Genetikk', '71685', '67325', '23995', '33.4728', '35.6405', '0.9392'),
('GeRmAn', '6850', '5540', '760', '11.0949', '13.7184', '0.8088'),
('Hendrik235', '14475', '12940', '3795', '26.2176', '29.3277', '0.8940'),
('Hi998', '64690', '54045', '11520', '17.8080', '21.3156', '0.8354'),
('HyperStyle', '10845', '9995', '5090', '46.9341', '50.9255', '0.9216'),
('JO3LHD', '10345', '8850', '1115', '10.7782', '12.5989', '0.8555'),
('Jocker', '31950', '25935', '6995', '21.8936', '26.9713', '0.8117'),
('Juh', '32020', '26145', '7120', '22.2361', '27.2327', '0.8165'),
('Klobuerste', '18690', '13940', '7570', '40.5029', '54.3042', '0.7459'),
('KofferRadio', '4300', '3325', '935', '21.7442', '28.1203', '0.7733'),
('Kruemelmonster', '20820', '16245', '1980', '9.5101', '12.1884', '0.7803'),
('Liz', '68230', '54655', '18115', '26.5499', '33.1443', '0.8010'),
('MaMo', '73485', '57710', '18970', '25.8148', '32.8713', '0.7853'),
('Marco', '170630', '139185', '37560', '22.0125', '26.9857', '0.8157'),
('Marlon', '19055', '16860', '6905', '36.2372', '40.9549', '0.8848'),
('Maxim', '43025', '36580', '14550', '33.8175', '39.7758', '0.8502'),
('Mazy', '18370', '15335', '4615', '25.1225', '30.0946', '0.8348'),
('MeTeor', '37370', '28860', '10355', '27.7094', '35.8801', '0.7723'),
('MineCrime', '20490', '17685', '4260', '20.7906', '24.0882', '0.8631'),
('mo0onlightzzz', '154900', '119445', '42500', '27.4371', '35.5812', '0.7711'),
('ModernPl4er', '122060', '87250', '33255', '27.2448', '38.1146', '0.7148'),
('Mox', '16375', '15170', '1850', '11.2977', '12.1951', '0.9264'),
('Mysan', '600', '540', '45', '7.5000', '8.3333', '0.9000'),
('Nick', '165905', '147830', '42070', '25.3579', '28.4584', '0.8911'),
('Nico', '17305', '14890', '5115', '29.5579', '34.3519', '0.8604'),
('Odin', '2745', '2265', '0', '0.0000', '0.0000', '0.8251'),
('Opsine', '17030', '16150', '3410', '20.0235', '21.1146', '0.9483'),
('Otter', '8405', '6635', '1700', '20.2261', '25.6217', '0.7894'),
('Popkornkopf', '12050', '9970', '1915', '15.8921', '19.2076', '0.8274'),
('Rainn', '2380', '2230', '285', '11.9748', '12.7803', '0.9370'),
('Reaper', '11015', '9115', '3540', '32.1380', '38.8371', '0.8275'),
('Reazon', '77615', '67580', '31200', '40.1984', '46.1675', '0.8707'),
('Reborn', '4690', '3215', '1520', '32.4094', '47.2784', '0.6855'),
('Ritter', '2650', '2555', '45', '1.6981', '1.7613', '0.9642'),
('Roc', '70215', '63945', '16710', '23.7983', '26.1318', '0.9107'),
('Ruffamilia', '10820', '8195', '2465', '22.7819', '30.0793', '0.7574'),
('SharkYx3', '40890', '31355', '7525', '18.4030', '23.9994', '0.7668'),
('Sikk', '95920', '85850', '25215', '26.2875', '29.3710', '0.8950'),
('Sil3nt', '15160', '12375', '5075', '33.4763', '41.0101', '0.8163'),
('SirMafi', '22840', '17125', '4350', '19.0455', '25.4015', '0.7498'),
('SkyxFlash', '129240', '102970', '30195', '23.3635', '29.3241', '0.7967'),
('Snow', '138715', '110410', '26880', '19.3779', '24.3456', '0.7959'),
('Sommersalami', '17850', '11690', '5015', '28.0952', '42.8999', '0.6549'),
('TerrorKing', '2760', '2600', '40', '1.4493', '1.5385', '0.9420'),
('TheAwesomeOne', '12090', '9915', '3280', '27.1299', '33.0812', '0.8201'),
('TheMaster', '9150', '6465', '1715', '18.7432', '26.5275', '0.7066'),
('TheMasterMan', '2060', '1840', '1010', '49.0291', '54.8913', '0.8932'),
('TheTruth', '39525', '37605', '13460', '34.0544', '35.7931', '0.9514'),
('TheUnownA', '24010', '20850', '5090', '21.1995', '24.4125', '0.8684'),
('TimonAkaRaiden', '53360', '34660', '11220', '21.0270', '32.3716', '0.6496'),
('Toyman', '1715', '1645', '805', '46.9388', '48.9362', '0.9592'),
('Vanity', '5540', '5005', '1525', '27.5271', '30.4695', '0.9034'),
('Vasco', '177535', '127125', '43510', '24.5078', '34.2262', '0.7161'),
('West', '16490', '12935', '4175', '25.3184', '32.2768', '0.7844'),
('WhityUntertan', '35355', '29440', '7260', '20.5346', '24.6603', '0.8327'),
('xBooster', '1220', '590', '260', '21.3115', '44.0678', '0.4836'),
('xErik', '212990', '170195', '52095', '24.4589', '30.6090', '0.7991'),
('xScooter', '3395', '2675', '545', '16.0530', '20.3738', '0.7879'),
('YaniCH', '17340', '13570', '4720', '27.2203', '34.7826', '0.7826'),
('[TTeam]Axel', '92315', '76920', '14900', '16.1404', '19.3708', '0.8332'),
('[TTeam]Blizard', '26205', '21745', '6970', '26.5980', '32.0533', '0.8298'),
('[TTeam]Dom', '550', '260', '0', '0.0000', '0.0000', '0.4727'),
('[TTeam]Johann', '32605', '22270', '105', '0.3220', '0.4715', '0.6830'),
('[TTeam]Maxx', '205', '150', '0', '0.0000', '0.0000', '0.7317');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `archievments`
--
ALTER TABLE `archievments`
 ADD PRIMARY KEY (`ID`), ADD UNIQUE KEY `Nickname` (`Nickname`);

--
-- Indexes for table `attackerladen`
--
ALTER TABLE `attackerladen`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ban`
--
ALTER TABLE `ban`
 ADD PRIMARY KEY (`ID`), ADD KEY `Nickname` (`Nickname`);

--
-- Indexes for table `beleidigungsystem`
--
ALTER TABLE `beleidigungsystem`
 ADD PRIMARY KEY (`ID`), ADD UNIQUE KEY `Beleidigung` (`Beleidigung`), ADD KEY `connectedTo` (`connectedTo`);

--
-- Indexes for table `bewaehrungsstrafen`
--
ALTER TABLE `bewaehrungsstrafen`
 ADD PRIMARY KEY (`ID`), ADD KEY `Adminname` (`Adminname`), ADD KEY `Nickname` (`Nickname`);

--
-- Indexes for table `blacklist`
--
ALTER TABLE `blacklist`
 ADD PRIMARY KEY (`ID`), ADD KEY `Name` (`Name`);

--
-- Indexes for table `buissness`
--
ALTER TABLE `buissness`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cp_deletes`
--
ALTER TABLE `cp_deletes`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `data_fraktions_namen`
--
ALTER TABLE `data_fraktions_namen`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `data_fraktions_raenge`
--
ALTER TABLE `data_fraktions_raenge`
 ADD PRIMARY KEY (`ID`), ADD KEY `FrakID` (`FrakID`);

--
-- Indexes for table `data_jobnamen`
--
ALTER TABLE `data_jobnamen`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `dev_beta`
--
ALTER TABLE `dev_beta`
 ADD PRIMARY KEY (`ID`), ADD UNIQUE KEY `Nickname` (`Nickname`);

--
-- Indexes for table `drivein`
--
ALTER TABLE `drivein`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `dutycounter`
--
ALTER TABLE `dutycounter`
 ADD PRIMARY KEY (`ID`), ADD UNIQUE KEY `UNIQUE` (`Nickname`,`timestamp`), ADD KEY `Nickname` (`Nickname`);

--
-- Indexes for table `emails`
--
ALTER TABLE `emails`
 ADD PRIMARY KEY (`ID`), ADD KEY `Empfaenger` (`Empfaenger`), ADD KEY `Sender` (`Sender`);

--
-- Indexes for table `faq`
--
ALTER TABLE `faq`
 ADD PRIMARY KEY (`ID`), ADD KEY `katID` (`katID`);

--
-- Indexes for table `faq_kat`
--
ALTER TABLE `faq_kat`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `frakkasse_zahlungen`
--
ALTER TABLE `frakkasse_zahlungen`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `fraktionskasse`
--
ALTER TABLE `fraktionskasse`
 ADD PRIMARY KEY (`FrakID`);

--
-- Indexes for table `gutschriften`
--
ALTER TABLE `gutschriften`
 ADD PRIMARY KEY (`ID`), ADD KEY `Nickname` (`Nickname`);

--
-- Indexes for table `haussys_hdb`
--
ALTER TABLE `haussys_hdb`
 ADD PRIMARY KEY (`ID`), ADD KEY `IRID` (`IRID`), ADD KEY `IRID_2` (`IRID`);

--
-- Indexes for table `haussys_irdb`
--
ALTER TABLE `haussys_irdb`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `haussys_wunsch`
--
ALTER TABLE `haussys_wunsch`
 ADD PRIMARY KEY (`ID`), ADD KEY `Nickname` (`Nickname`);

--
-- Indexes for table `inventar`
--
ALTER TABLE `inventar`
 ADD PRIMARY KEY (`ID`), ADD UNIQUE KEY `Nickname` (`Nickname`);

--
-- Indexes for table `jobskills`
--
ALTER TABLE `jobskills`
 ADD PRIMARY KEY (`ID`), ADD UNIQUE KEY `Nickname` (`Nickname`);

--
-- Indexes for table `lizensen`
--
ALTER TABLE `lizensen`
 ADD PRIMARY KEY (`ID`), ADD UNIQUE KEY `Nickname` (`Nickname`);

--
-- Indexes for table `multiaccount_serial`
--
ALTER TABLE `multiaccount_serial`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `newtables`
--
ALTER TABLE `newtables`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ostereier`
--
ALTER TABLE `ostereier`
 ADD PRIMARY KEY (`ID`), ADD KEY `gefundenVon` (`gefundenVon`), ADD KEY `event` (`event`);

--
-- Indexes for table `players`
--
ALTER TABLE `players`
 ADD PRIMARY KEY (`ID`), ADD UNIQUE KEY `Nickname` (`Nickname`);

--
-- Indexes for table `premium`
--
ALTER TABLE `premium`
 ADD PRIMARY KEY (`ID`), ADD UNIQUE KEY `Name` (`Name`);

--
-- Indexes for table `prestige`
--
ALTER TABLE `prestige`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `rechte`
--
ALTER TABLE `rechte`
 ADD PRIMARY KEY (`ID`), ADD UNIQUE KEY `Nickname` (`Nickname`);

--
-- Indexes for table `ruhezonen`
--
ALTER TABLE `ruhezonen`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `servermessage`
--
ALTER TABLE `servermessage`
 ADD PRIMARY KEY (`ID`), ADD KEY `Nickname` (`Nickname`);

--
-- Indexes for table `serversettings`
--
ALTER TABLE `serversettings`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `sprunk`
--
ALTER TABLE `sprunk`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tapp_tictactoe`
--
ALTER TABLE `tapp_tictactoe`
 ADD PRIMARY KEY (`ID`), ADD KEY `Nickname` (`Nickname`,`Gegner`), ADD KEY `Gegner` (`Gegner`);

--
-- Indexes for table `taxipreise`
--
ALTER TABLE `taxipreise`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `terratapps`
--
ALTER TABLE `terratapps`
 ADD PRIMARY KEY (`ID`), ADD UNIQUE KEY `Nickname` (`Nickname`);

--
-- Indexes for table `timeban`
--
ALTER TABLE `timeban`
 ADD PRIMARY KEY (`ID`), ADD KEY `Nickname` (`Nickname`);

--
-- Indexes for table `tlt_friendlist`
--
ALTER TABLE `tlt_friendlist`
 ADD PRIMARY KEY (`ID`), ADD KEY `Nickname` (`Nickname`), ADD KEY `Friendname` (`Friendname`);

--
-- Indexes for table `tlt_friendrequest`
--
ALTER TABLE `tlt_friendrequest`
 ADD PRIMARY KEY (`ID`), ADD KEY `Fromname` (`Fromname`), ADD KEY `Toname` (`Toname`);

--
-- Indexes for table `tombupot`
--
ALTER TABLE `tombupot`
 ADD PRIMARY KEY (`ID`), ADD KEY `Nickname` (`Nickname`);

--
-- Indexes for table `top_user_daily`
--
ALTER TABLE `top_user_daily`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `userdata`
--
ALTER TABLE `userdata`
 ADD PRIMARY KEY (`ID`), ADD UNIQUE KEY `Nickname` (`Nickname`), ADD KEY `verheiratet` (`verheiratet`), ADD KEY `verheiratet_2` (`verheiratet`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
 ADD PRIMARY KEY (`ID`), ADD UNIQUE KEY `Unique` (`Besitzer`,`SlotID`);

--
-- Indexes for table `warns`
--
ALTER TABLE `warns`
 ADD PRIMARY KEY (`ID`), ADD KEY `Nickname` (`Nickname`);

--
-- Indexes for table `werbungen`
--
ALTER TABLE `werbungen`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `whitelist`
--
ALTER TABLE `whitelist`
 ADD PRIMARY KEY (`ID`), ADD UNIQUE KEY `Nickname` (`Nickname`);

--
-- Indexes for table `zeugnis`
--
ALTER TABLE `zeugnis`
 ADD PRIMARY KEY (`ID`), ADD UNIQUE KEY `Nickname` (`Nickname`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `archievments`
--
ALTER TABLE `archievments`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=56525;
--
-- AUTO_INCREMENT for table `ban`
--
ALTER TABLE `ban`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3524;
--
-- AUTO_INCREMENT for table `beleidigungsystem`
--
ALTER TABLE `beleidigungsystem`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=48;
--
-- AUTO_INCREMENT for table `bewaehrungsstrafen`
--
ALTER TABLE `bewaehrungsstrafen`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `blacklist`
--
ALTER TABLE `blacklist`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10564;
--
-- AUTO_INCREMENT for table `buissness`
--
ALTER TABLE `buissness`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `cp_deletes`
--
ALTER TABLE `cp_deletes`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=51572;
--
-- AUTO_INCREMENT for table `data_fraktions_raenge`
--
ALTER TABLE `data_fraktions_raenge`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=74;
--
-- AUTO_INCREMENT for table `dev_beta`
--
ALTER TABLE `dev_beta`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `drivein`
--
ALTER TABLE `drivein`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `dutycounter`
--
ALTER TABLE `dutycounter`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=87081;
--
-- AUTO_INCREMENT for table `emails`
--
ALTER TABLE `emails`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=588;
--
-- AUTO_INCREMENT for table `faq`
--
ALTER TABLE `faq`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `faq_kat`
--
ALTER TABLE `faq_kat`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `frakkasse_zahlungen`
--
ALTER TABLE `frakkasse_zahlungen`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `gutschriften`
--
ALTER TABLE `gutschriften`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1828;
--
-- AUTO_INCREMENT for table `haussys_hdb`
--
ALTER TABLE `haussys_hdb`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=133;
--
-- AUTO_INCREMENT for table `haussys_irdb`
--
ALTER TABLE `haussys_irdb`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `haussys_wunsch`
--
ALTER TABLE `haussys_wunsch`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=536;
--
-- AUTO_INCREMENT for table `inventar`
--
ALTER TABLE `inventar`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=56632;
--
-- AUTO_INCREMENT for table `jobskills`
--
ALTER TABLE `jobskills`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=65369;
--
-- AUTO_INCREMENT for table `lizensen`
--
ALTER TABLE `lizensen`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=65369;
--
-- AUTO_INCREMENT for table `multiaccount_serial`
--
ALTER TABLE `multiaccount_serial`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `newtables`
--
ALTER TABLE `newtables`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `ostereier`
--
ALTER TABLE `ostereier`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4543;
--
-- AUTO_INCREMENT for table `players`
--
ALTER TABLE `players`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=56578;
--
-- AUTO_INCREMENT for table `premium`
--
ALTER TABLE `premium`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=56216;
--
-- AUTO_INCREMENT for table `prestige`
--
ALTER TABLE `prestige`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `rechte`
--
ALTER TABLE `rechte`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=32357;
--
-- AUTO_INCREMENT for table `ruhezonen`
--
ALTER TABLE `ruhezonen`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `servermessage`
--
ALTER TABLE `servermessage`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=315762;
--
-- AUTO_INCREMENT for table `serversettings`
--
ALTER TABLE `serversettings`
MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `sprunk`
--
ALTER TABLE `sprunk`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT for table `tapp_tictactoe`
--
ALTER TABLE `tapp_tictactoe`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1023;
--
-- AUTO_INCREMENT for table `taxipreise`
--
ALTER TABLE `taxipreise`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `terratapps`
--
ALTER TABLE `terratapps`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=51478;
--
-- AUTO_INCREMENT for table `timeban`
--
ALTER TABLE `timeban`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1714;
--
-- AUTO_INCREMENT for table `tlt_friendlist`
--
ALTER TABLE `tlt_friendlist`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17565;
--
-- AUTO_INCREMENT for table `tlt_friendrequest`
--
ALTER TABLE `tlt_friendrequest`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11136;
--
-- AUTO_INCREMENT for table `tombupot`
--
ALTER TABLE `tombupot`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `top_user_daily`
--
ALTER TABLE `top_user_daily`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `userdata`
--
ALTER TABLE `userdata`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=56518;
--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=86109;
--
-- AUTO_INCREMENT for table `warns`
--
ALTER TABLE `warns`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1371;
--
-- AUTO_INCREMENT for table `werbungen`
--
ALTER TABLE `werbungen`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `whitelist`
--
ALTER TABLE `whitelist`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `zeugnis`
--
ALTER TABLE `zeugnis`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=34182;
--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `archievments`
--
ALTER TABLE `archievments`
ADD CONSTRAINT `archievments_ibfk_1` FOREIGN KEY (`Nickname`) REFERENCES `players` (`Nickname`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints der Tabelle `ban`
--
ALTER TABLE `ban`
ADD CONSTRAINT `ban_ibfk_1` FOREIGN KEY (`Nickname`) REFERENCES `players` (`Nickname`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints der Tabelle `beleidigungsystem`
--
ALTER TABLE `beleidigungsystem`
ADD CONSTRAINT `beleidigungsystem_ibfk_1` FOREIGN KEY (`connectedTo`) REFERENCES `beleidigungsystem` (`Beleidigung`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints der Tabelle `bewaehrungsstrafen`
--
ALTER TABLE `bewaehrungsstrafen`
ADD CONSTRAINT `bewaehrungsstrafen_ibfk_1` FOREIGN KEY (`Nickname`) REFERENCES `players` (`Nickname`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `bewaehrungsstrafen_ibfk_2` FOREIGN KEY (`Adminname`) REFERENCES `players` (`Nickname`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints der Tabelle `blacklist`
--
ALTER TABLE `blacklist`
ADD CONSTRAINT `blacklist_ibfk_1` FOREIGN KEY (`Name`) REFERENCES `players` (`Nickname`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints der Tabelle `data_fraktions_raenge`
--
ALTER TABLE `data_fraktions_raenge`
ADD CONSTRAINT `data_fraktions_raenge_ibfk_1` FOREIGN KEY (`FrakID`) REFERENCES `data_fraktions_namen` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints der Tabelle `dev_beta`
--
ALTER TABLE `dev_beta`
ADD CONSTRAINT `dev_beta_ibfk_1` FOREIGN KEY (`Nickname`) REFERENCES `players` (`Nickname`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints der Tabelle `dutycounter`
--
ALTER TABLE `dutycounter`
ADD CONSTRAINT `dutycounter_ibfk_1` FOREIGN KEY (`Nickname`) REFERENCES `players` (`Nickname`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints der Tabelle `emails`
--
ALTER TABLE `emails`
ADD CONSTRAINT `emails_ibfk_1` FOREIGN KEY (`Empfaenger`) REFERENCES `players` (`Nickname`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `emails_ibfk_2` FOREIGN KEY (`Sender`) REFERENCES `players` (`Nickname`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints der Tabelle `faq`
--
ALTER TABLE `faq`
ADD CONSTRAINT `faq_ibfk_1` FOREIGN KEY (`katID`) REFERENCES `faq_kat` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints der Tabelle `gutschriften`
--
ALTER TABLE `gutschriften`
ADD CONSTRAINT `gutschriften_ibfk_1` FOREIGN KEY (`Nickname`) REFERENCES `players` (`Nickname`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints der Tabelle `haussys_hdb`
--
ALTER TABLE `haussys_hdb`
ADD CONSTRAINT `haussys_hdb_ibfk_1` FOREIGN KEY (`IRID`) REFERENCES `haussys_irdb` (`ID`) ON UPDATE CASCADE;

--
-- Constraints der Tabelle `haussys_wunsch`
--
ALTER TABLE `haussys_wunsch`
ADD CONSTRAINT `haussys_wunsch_ibfk_1` FOREIGN KEY (`Nickname`) REFERENCES `players` (`Nickname`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints der Tabelle `inventar`
--
ALTER TABLE `inventar`
ADD CONSTRAINT `inventar_ibfk_1` FOREIGN KEY (`Nickname`) REFERENCES `players` (`Nickname`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints der Tabelle `jobskills`
--
ALTER TABLE `jobskills`
ADD CONSTRAINT `jobskills_ibfk_1` FOREIGN KEY (`Nickname`) REFERENCES `players` (`Nickname`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints der Tabelle `lizensen`
--
ALTER TABLE `lizensen`
ADD CONSTRAINT `lizensen_ibfk_1` FOREIGN KEY (`Nickname`) REFERENCES `players` (`Nickname`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints der Tabelle `ostereier`
--
ALTER TABLE `ostereier`
ADD CONSTRAINT `ostereier_ibfk_1` FOREIGN KEY (`gefundenVon`) REFERENCES `players` (`Nickname`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints der Tabelle `premium`
--
ALTER TABLE `premium`
ADD CONSTRAINT `premium_ibfk_1` FOREIGN KEY (`Name`) REFERENCES `players` (`Nickname`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints der Tabelle `rechte`
--
ALTER TABLE `rechte`
ADD CONSTRAINT `rechte_ibfk_1` FOREIGN KEY (`Nickname`) REFERENCES `players` (`Nickname`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints der Tabelle `servermessage`
--
ALTER TABLE `servermessage`
ADD CONSTRAINT `servermessage_ibfk_1` FOREIGN KEY (`Nickname`) REFERENCES `players` (`Nickname`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints der Tabelle `tapp_tictactoe`
--
ALTER TABLE `tapp_tictactoe`
ADD CONSTRAINT `tapp_tictactoe_ibfk_1` FOREIGN KEY (`Nickname`) REFERENCES `players` (`Nickname`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `tapp_tictactoe_ibfk_2` FOREIGN KEY (`Gegner`) REFERENCES `players` (`Nickname`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints der Tabelle `terratapps`
--
ALTER TABLE `terratapps`
ADD CONSTRAINT `terratapps_ibfk_1` FOREIGN KEY (`Nickname`) REFERENCES `players` (`Nickname`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints der Tabelle `timeban`
--
ALTER TABLE `timeban`
ADD CONSTRAINT `timeban_ibfk_1` FOREIGN KEY (`Nickname`) REFERENCES `players` (`Nickname`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints der Tabelle `tlt_friendlist`
--
ALTER TABLE `tlt_friendlist`
ADD CONSTRAINT `tlt_friendlist_ibfk_1` FOREIGN KEY (`Friendname`) REFERENCES `players` (`Nickname`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `tlt_friendlist_ibfk_2` FOREIGN KEY (`Nickname`) REFERENCES `players` (`Nickname`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints der Tabelle `tlt_friendrequest`
--
ALTER TABLE `tlt_friendrequest`
ADD CONSTRAINT `tlt_friendrequest_ibfk_1` FOREIGN KEY (`Fromname`) REFERENCES `players` (`Nickname`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `tlt_friendrequest_ibfk_2` FOREIGN KEY (`Toname`) REFERENCES `players` (`Nickname`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints der Tabelle `tombupot`
--
ALTER TABLE `tombupot`
ADD CONSTRAINT `tombupot_ibfk_1` FOREIGN KEY (`Nickname`) REFERENCES `players` (`Nickname`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints der Tabelle `userdata`
--
ALTER TABLE `userdata`
ADD CONSTRAINT `userdata_ibfk_1` FOREIGN KEY (`Nickname`) REFERENCES `players` (`Nickname`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints der Tabelle `vehicles`
--
ALTER TABLE `vehicles`
ADD CONSTRAINT `vehicles_ibfk_1` FOREIGN KEY (`Besitzer`) REFERENCES `players` (`Nickname`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints der Tabelle `warns`
--
ALTER TABLE `warns`
ADD CONSTRAINT `warns_ibfk_1` FOREIGN KEY (`Nickname`) REFERENCES `players` (`Nickname`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints der Tabelle `whitelist`
--
ALTER TABLE `whitelist`
ADD CONSTRAINT `whitelist_ibfk_1` FOREIGN KEY (`Nickname`) REFERENCES `players` (`Nickname`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints der Tabelle `zeugnis`
--
ALTER TABLE `zeugnis`
ADD CONSTRAINT `zeugnis_ibfk_1` FOREIGN KEY (`Nickname`) REFERENCES `players` (`Nickname`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
