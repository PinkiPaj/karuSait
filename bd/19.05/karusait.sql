-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 19, 2020 at 12:45 PM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `karusait`
--

-- --------------------------------------------------------

--
-- Table structure for table `achievement`
--

CREATE TABLE `achievement` (
  `IDAchievement` int(255) NOT NULL,
  `Name` longtext NOT NULL,
  `Description` longtext NOT NULL,
  `NameFail` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `achieveperson`
--

CREATE TABLE `achieveperson` (
  `IDAchievePerson` int(255) NOT NULL,
  `ID` int(255) NOT NULL,
  `IDachievement` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `game`
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
-- Table structure for table `gamerols`
--

CREATE TABLE `gamerols` (
  `ID` int(250) NOT NULL,
  `Name` varchar(250) CHARACTER SET utf8 NOT NULL,
  `Player` int(250) NOT NULL,
  `IDGame` int(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rols`
--

CREATE TABLE `rols` (
  `IDStatus` int(250) NOT NULL,
  `Status` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rols`
--

INSERT INTO `rols` (`IDStatus`, `Status`) VALUES
(1, 'ADMIN'),
(2, 'USER');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `IDUser` int(250) NOT NULL,
  `Nicname` varchar(250) CHARACTER SET utf8 NOT NULL,
  `Password` longtext CHARACTER SET utf8 NOT NULL,
  `Solt` longtext CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`IDUser`, `Nicname`, `Password`, `Solt`) VALUES
(23, 'Pinki', '$6$rounds=5000$liBVUR6mhw7FkiwF$SCIona/PpeYUhxTC.Te.tCt2X9x5xymq.3YgAbc8lku90olqAIC8NV9AEeWPu66xh2uWZgBZHvjfygppg1QTC.', '$6$rounds=5000$liBVUR6mhw7FkiwF$'),
(24, 'Pinki1', '$6$rounds=5000$IDD6v3N7fNWPJgmP$QEgAWke3Pm3pvokQZ71atpCA4vCDb/UmeU1qs/COjHzHlNYmFBhEg4tZPCs5MHTPBFzt6vDcCTRr7R.x1bMMO0', '$6$rounds=5000$IDD6v3N7fNWPJgmP$'),
(25, 'Pinki2', '$6$rounds=5000$EDhRAWgORNenpS7W$FFgxe31pSvF8bviewHh1vgTLbyBYFpNCgfUJgQBciWRZpFblzGqAi2mxYSSv0KTlrLeDlz.WHsWNDZ0PxQGfq/', '$6$rounds=5000$EDhRAWgORNenpS7W$');

-- --------------------------------------------------------

--
-- Table structure for table `userinf`
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
-- Dumping data for table `userinf`
--

INSERT INTO `userinf` (`ID`, `Name`, `FerstName`, `E-mail`, `Telefon`, `Status`, `IDUser`) VALUES
(4, 'Aaa', 'Adaa', 'aaa@gmail.com', 33333, 1, 23),
(5, 'Aaaa', 'sss', 'aaa@gmail.com', 23233, 2, 24);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `achievement`
--
ALTER TABLE `achievement`
  ADD PRIMARY KEY (`IDAchievement`);

--
-- Indexes for table `achieveperson`
--
ALTER TABLE `achieveperson`
  ADD PRIMARY KEY (`IDAchievePerson`,`ID`),
  ADD KEY `ID` (`ID`),
  ADD KEY `achieveperson_ibfk_1` (`IDachievement`);

--
-- Indexes for table `game`
--
ALTER TABLE `game`
  ADD PRIMARY KEY (`ID`,`RulsList`),
  ADD KEY `RulsList` (`RulsList`);

--
-- Indexes for table `gamerols`
--
ALTER TABLE `gamerols`
  ADD PRIMARY KEY (`ID`,`Player`),
  ADD KEY `IDGame` (`IDGame`),
  ADD KEY `Player` (`Player`);

--
-- Indexes for table `rols`
--
ALTER TABLE `rols`
  ADD PRIMARY KEY (`IDStatus`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`IDUser`),
  ADD UNIQUE KEY `Nicname` (`Nicname`);

--
-- Indexes for table `userinf`
--
ALTER TABLE `userinf`
  ADD PRIMARY KEY (`ID`,`Status`,`IDUser`),
  ADD UNIQUE KEY `IDUser` (`IDUser`),
  ADD KEY `Status` (`Status`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `achievement`
--
ALTER TABLE `achievement`
  MODIFY `IDAchievement` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `achieveperson`
--
ALTER TABLE `achieveperson`
  MODIFY `IDAchievePerson` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `game`
--
ALTER TABLE `game`
  MODIFY `ID` int(250) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gamerols`
--
ALTER TABLE `gamerols`
  MODIFY `ID` int(250) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rols`
--
ALTER TABLE `rols`
  MODIFY `IDStatus` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `IDUser` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `userinf`
--
ALTER TABLE `userinf`
  MODIFY `ID` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `achieveperson`
--
ALTER TABLE `achieveperson`
  ADD CONSTRAINT `achieveperson_ibfk_1` FOREIGN KEY (`IDachievement`) REFERENCES `achievement` (`IDAchievement`),
  ADD CONSTRAINT `achieveperson_ibfk_2` FOREIGN KEY (`ID`) REFERENCES `userinf` (`ID`);

--
-- Constraints for table `gamerols`
--
ALTER TABLE `gamerols`
  ADD CONSTRAINT `gamerols_ibfk_1` FOREIGN KEY (`Player`) REFERENCES `userinf` (`ID`);

--
-- Constraints for table `userinf`
--
ALTER TABLE `userinf`
  ADD CONSTRAINT `userinf_ibfk_1` FOREIGN KEY (`Status`) REFERENCES `rols` (`IDStatus`),
  ADD CONSTRAINT `userinf_ibfk_2` FOREIGN KEY (`IDUser`) REFERENCES `user` (`IDUser`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
