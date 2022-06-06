SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `lab1`
--

-- --------------------------------------------------------

--
-- Структура таблицы `game`
--

CREATE TABLE `game` (
  `ID_GAME` int(10) NOT NULL,
  `date` date NOT NULL,
  `place` text NOT NULL,
  `score` text NOT NULL,
  `FID_TEAM1` int(10) NOT NULL,
  `FID_TEAM2` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `game`
--

INSERT INTO `game` (`ID_GAME`, `date`, `place`, `score`, `FID_TEAM1`, `FID_TEAM2`) VALUES
(1, '2020-12-22', 'Boston', '2-0', 1, 2),
(2, '2020-12-24', 'New Orleans', '2-0', 3, 6),
(3, '2020-12-24', 'Los Angeles', '0-0', 5, 2),
(4, '2020-12-25', 'New York', '2-2', 7, 8),
(5, '2020-12-26', 'Houston', '1-1', 1, 4),
(6, '2020-12-28', 'Boston', '1-0', 2, 3),
(7, '2020-12-31', 'New Orleans', '0-1', 5, 3),
(8, '2021-01-11', 'Houston', '0-1', 6, 8),
(9, '2021-01-16', 'Dallas', '0-3', 5, 7),
(10, '2021-01-18', 'Philadelphia', '4-1', 1, 8);

-- --------------------------------------------------------

--
-- Структура таблицы `player`
--

CREATE TABLE `player` (
  `ID_PLAYER` int(10) NOT NULL,
  `name` text NOT NULL,
  `FID_TEAM` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `player`
--

INSERT INTO `player` (`ID_PLAYER`, `name`, `FID_TEAM`) VALUES
(1, 'Cobi Jones', 1),
(2, 'Landon Donovan', 1),
(3, 'Michael Bradley', 1),
(4, 'Clint Dempsey', 1),
(5, 'Jeff Agoos', 1),
(6, 'Marcelo Balboa', 1),
(7, 'DaMarcus Beasley', 1),
(8, 'Tim Howard', 2),
(9, 'Jozy Altidore', 2),
(10, 'Claudio Reyna', 2),
(11, 'Carlos Bocanegra', 2),
(12, 'Paul Caligiuri', 2),
(13, 'Eric Wynalda', 2),
(14, 'Kasey Keller', 3),
(15, 'Earnie Stewart', 3),
(16, 'Joe-Max Moore', 3),
(17, 'Tony Meola', 3),
(18, 'Alexi Lalas', 3),
(19, 'Brian McBride', 3),
(20, 'John Harkes', 4),
(21, 'Steve Cherundolo', 4),
(22, 'Bruce Murray', 4),
(23, 'Frankie Hejduk', 4),
(24, 'Eddie Lewis', 4),
(25, 'Eddie Pope', 5),
(26, 'Brad Friedel', 5),
(27, 'Tab Ramos', 5),
(28, 'Thomas Dooley', 5),
(29, 'Desmond Armstrong', 5),
(30, 'Chris Henderson', 5),
(31, 'Mike Burns', 6),
(32, 'DeAndre Yedlin', 6),
(33, 'Hugo Perez', 6),
(34, 'Oguchi Onyewu', 6),
(35, 'Jermaine Jones', 6),
(36, 'Gyasi Zardes', 6),
(37, 'Mike Sorber', 7),
(38, 'Peter Vermes', 7),
(39, 'Chris Armas', 7),
(40, 'Alejandro Bedoya', 7),
(41, 'Pablo Mastroeni', 7),
(42, 'Brad Guzan', 7),
(43, 'Eddie Johnson', 8),
(44, 'Jovan Kirovski', 8),
(45, 'Fernando Clavijo', 8),
(46, 'Kyle Beckerman', 8),
(47, 'Fabian Johnson', 8),
(48, 'Geoff Cameron', 8);

-- --------------------------------------------------------

--
-- Структура таблицы `team`
--

CREATE TABLE `team` (
  `ID_TEAM` int(10) NOT NULL,
  `name` text NOT NULL,
  `LEAGUE` text NOT NULL,
  `coach` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `team`
--

INSERT INTO `team` (`ID_TEAM`, `name`, `LEAGUE`, `coach`) VALUES
(1, 'Atlanta', 'Empire Football League', 'Dominic Kinnear'),
(2, 'Nashville', 'New England Football League', 'Graham Zusi'),
(3, 'Rapids', 'Mid Continental Football League', 'John Doyle'),
(4, 'Galaxy', 'Empire Football League', 'Josh Wolff'),
(5, 'Earthquakes', 'New England Football League', 'Sacha Kljestan'),
(6, 'Fire', 'Mid Continental Football League', 'Omar Gonzalez'),
(7, 'Chivas', 'Empire Football League', 'Kellyn Acosta'),
(8, 'Cincinnati', 'Empire Football League', 'Christian Pulisic');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `game`
--
ALTER TABLE `game`
  ADD PRIMARY KEY (`ID_GAME`);

--
-- Индексы таблицы `player`
--
ALTER TABLE `player`
  ADD PRIMARY KEY (`ID_PLAYER`);

--
-- Индексы таблицы `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`ID_TEAM`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
