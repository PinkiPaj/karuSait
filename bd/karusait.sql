-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Май 10 2020 г., 15:12
-- Версия сервера: 10.4.11-MariaDB
-- Версия PHP: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `karusait`
--

-- --------------------------------------------------------

--
-- Структура таблицы `achievement`
--

CREATE TABLE `achievement` (
  `IDAchievement` int(255) NOT NULL,
  `Name` longtext NOT NULL,
  `Description` longtext NOT NULL,
  `NameFail` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `achieveperson`
--

CREATE TABLE `achieveperson` (
  `IDAchievePerson` int(255) NOT NULL,
  `ID` int(255) NOT NULL,
  `IDachievement` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `game`
--

CREATE TABLE `game` (
  `ID` int(250) NOT NULL,
  `Nicname` varchar(250) CHARACTER SET utf8 NOT NULL,
  `Date` date NOT NULL,
  `Text` varchar(5000) CHARACTER SET utf8 NOT NULL,
  `Prise` int(250) NOT NULL,
  `Location` varchar(250) CHARACTER SET utf8 NOT NULL,
  `RulsList` int(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `gamerols`
--

CREATE TABLE `gamerols` (
  `ID` int(250) NOT NULL,
  `Name` varchar(250) CHARACTER SET utf8 NOT NULL,
  `Player` int(250) NOT NULL,
  `IDGame` int(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `rols`
--

CREATE TABLE `rols` (
  `IDStatus` int(250) NOT NULL,
  `Status` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `rols`
--

INSERT INTO `rols` (`IDStatus`, `Status`) VALUES
(1, 'ADMIN'),
(2, 'USER');

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `IDUser` int(250) NOT NULL,
  `Nicname` varchar(250) CHARACTER SET utf8 NOT NULL,
  `Password` longtext CHARACTER SET utf8 NOT NULL,
  `Solt` longtext CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`IDUser`, `Nicname`, `Password`, `Solt`) VALUES
(23, 'Pinki', '$6$rounds=5000$liBVUR6mhw7FkiwF$SCIona/PpeYUhxTC.Te.tCt2X9x5xymq.3YgAbc8lku90olqAIC8NV9AEeWPu66xh2uWZgBZHvjfygppg1QTC.', '$6$rounds=5000$liBVUR6mhw7FkiwF$'),
(24, 'Pinki', '$6$rounds=5000$IDD6v3N7fNWPJgmP$QEgAWke3Pm3pvokQZ71atpCA4vCDb/UmeU1qs/COjHzHlNYmFBhEg4tZPCs5MHTPBFzt6vDcCTRr7R.x1bMMO0', '$6$rounds=5000$IDD6v3N7fNWPJgmP$'),
(25, 'Pinki', '$6$rounds=5000$EDhRAWgORNenpS7W$FFgxe31pSvF8bviewHh1vgTLbyBYFpNCgfUJgQBciWRZpFblzGqAi2mxYSSv0KTlrLeDlz.WHsWNDZ0PxQGfq/', '$6$rounds=5000$EDhRAWgORNenpS7W$');

-- --------------------------------------------------------

--
-- Структура таблицы `userinf`
--

CREATE TABLE `userinf` (
  `ID` int(250) NOT NULL,
  `Name` varchar(250) CHARACTER SET utf8 NOT NULL,
  `FerstName` varchar(250) CHARACTER SET utf8 NOT NULL,
  `E-mail` varchar(250) CHARACTER SET utf8 NOT NULL,
  `Telefon` int(250) NOT NULL,
  `Status` int(250) NOT NULL,
  `IDUser` int(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `userinf`
--

INSERT INTO `userinf` (`ID`, `Name`, `FerstName`, `E-mail`, `Telefon`, `Status`, `IDUser`) VALUES
(4, 'Aaa', 'Adaa', 'aaa@gmail.com', 33333, 1, 23),
(5, 'Aaaa', 'sss', 'aaa@gmail.com', 23233, 2, 24);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `achievement`
--
ALTER TABLE `achievement`
  ADD PRIMARY KEY (`IDAchievement`);

--
-- Индексы таблицы `achieveperson`
--
ALTER TABLE `achieveperson`
  ADD PRIMARY KEY (`IDAchievePerson`,`ID`),
  ADD KEY `ID` (`ID`);

--
-- Индексы таблицы `game`
--
ALTER TABLE `game`
  ADD PRIMARY KEY (`ID`,`RulsList`),
  ADD KEY `RulsList` (`RulsList`);

--
-- Индексы таблицы `gamerols`
--
ALTER TABLE `gamerols`
  ADD PRIMARY KEY (`ID`,`Player`),
  ADD KEY `IDGame` (`IDGame`),
  ADD KEY `Player` (`Player`);

--
-- Индексы таблицы `rols`
--
ALTER TABLE `rols`
  ADD PRIMARY KEY (`IDStatus`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`IDUser`);

--
-- Индексы таблицы `userinf`
--
ALTER TABLE `userinf`
  ADD PRIMARY KEY (`ID`,`Status`,`IDUser`),
  ADD UNIQUE KEY `IDUser` (`IDUser`),
  ADD KEY `Status` (`Status`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `achievement`
--
ALTER TABLE `achievement`
  MODIFY `IDAchievement` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `achieveperson`
--
ALTER TABLE `achieveperson`
  MODIFY `IDAchievePerson` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `game`
--
ALTER TABLE `game`
  MODIFY `ID` int(250) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `gamerols`
--
ALTER TABLE `gamerols`
  MODIFY `ID` int(250) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `rols`
--
ALTER TABLE `rols`
  MODIFY `IDStatus` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `IDUser` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT для таблицы `userinf`
--
ALTER TABLE `userinf`
  MODIFY `ID` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `achieveperson`
--
ALTER TABLE `achieveperson`
  ADD CONSTRAINT `achieveperson_ibfk_1` FOREIGN KEY (`IDachievement`) REFERENCES `achievement` (`IDAchievement`),
  ADD CONSTRAINT `achieveperson_ibfk_2` FOREIGN KEY (`ID`) REFERENCES `userinf` (`ID`);

--
-- Ограничения внешнего ключа таблицы `gamerols`
--
ALTER TABLE `gamerols`
  ADD CONSTRAINT `gamerols_ibfk_1` FOREIGN KEY (`Player`) REFERENCES `userinf` (`ID`);

--
-- Ограничения внешнего ключа таблицы `userinf`
--
ALTER TABLE `userinf`
  ADD CONSTRAINT `userinf_ibfk_1` FOREIGN KEY (`Status`) REFERENCES `rols` (`IDStatus`),
  ADD CONSTRAINT `userinf_ibfk_2` FOREIGN KEY (`IDUser`) REFERENCES `user` (`IDUser`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
