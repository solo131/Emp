-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Май 28 2022 г., 04:02
-- Версия сервера: 10.4.24-MariaDB
-- Версия PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `test`
--

-- --------------------------------------------------------

--
-- Структура таблицы `employee`
--

CREATE TABLE `employee` (
  `id` int(10) NOT NULL,
  `name` varchar(50) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `surname` varchar(50) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `age` int(20) NOT NULL,
  `salary` int(20) NOT NULL,
  `date_of_birth` date NOT NULL,
  `date_of_join` date NOT NULL,
  `qualification` varchar(50) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `employee`
--

INSERT INTO `employee` (`id`, `name`, `surname`, `age`, `salary`, `date_of_birth`, `date_of_join`, `qualification`) VALUES
(1, 'Zahar', 'Bolton', 25, 20000, '1994-03-03', '2017-04-04', 'Computer Engineer'),
(3, 'Zahid', 'Zaharov', 23, 100000, '1996-05-02', '2018-02-02', 'Computer Engineer'),
(4, 'Biria', 'Zubovitch', 30, 24000, '1989-05-10', '2015-03-15', 'Mechanical Engineer'),
(5, 'Perl', 'Perkal', 40, 50000, '1979-02-02', '2003-01-04', 'Civil Engineer'),
(6, 'Tulpan', 'Tulpan', 29, 30000, '1990-03-03', '2012-08-02', 'BA in English');

-- --------------------------------------------------------

--
-- Структура таблицы `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `type` enum('admin','hr') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `login`
--

INSERT INTO `login` (`id`, `name`, `password`, `type`) VALUES
(1, 'admin', 'admin1', 'admin'),
(2, 'hr', 'hr1', 'hr');

-- --------------------------------------------------------

--
-- Структура таблицы `time`
--

CREATE TABLE `time` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `day` enum('saturday','sunday','monday','tuesday','wednesday','thursday','friday') NOT NULL,
  `time_in` time(6) NOT NULL,
  `time_out` time(6) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `time`
--

INSERT INTO `time` (`id`, `name`, `day`, `time_in`, `time_out`, `date`) VALUES
(1, 'Zahar', 'saturday', '09:00:00.000000', '05:00:00.000000', '0000-00-00'),
(2, 'Perl', 'monday', '08:00:00.000000', '06:00:00.000000', '0000-00-00'),
(2, 'Perl', 'monday', '11:00:00.000000', '05:00:00.000000', '0000-00-00'),
(1, 'Zahar', 'monday', '09:00:00.000000', '07:00:00.000000', '0000-00-00'),
(3, 'Biria', 'wednesday', '08:00:00.000000', '05:00:00.000000', '0000-00-00'),
(3, 'Biria', 'friday', '10:00:00.000000', '04:00:00.000000', '0000-00-00'),
(3, 'Biria', 'saturday', '09:00:00.000000', '04:30:00.000000', '0000-00-00'),
(4, 'Tulpan', 'monday', '10:30:00.000000', '05:20:00.000000', '2019-06-22'),
(4, 'Tulpan', 'tuesday', '09:10:00.000000', '06:00:00.000000', '2019-06-22'),
(3, 'Zahid', 'monday', '08:00:00.000000', '02:00:00.000000', '2019-06-22'),
(1, 'Zahar', 'monday', '08:00:00.000000', '05:00:00.000000', '2019-06-22'),
(1, 'Zahar', 'tuesday', '09:00:00.000000', '06:00:00.000000', '2019-06-22'),
(1, 'Zahar', 'wednesday', '09:30:00.000000', '03:00:00.000000', '2019-06-22'),
(1, 'Zahar', 'saturday', '10:00:00.000000', '01:00:00.000000', '2019-06-22');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
