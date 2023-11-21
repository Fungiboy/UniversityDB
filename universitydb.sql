-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Värd: 127.0.0.1
-- Tid vid skapande: 21 nov 2023 kl 14:05
-- Serverversion: 10.4.21-MariaDB
-- PHP-version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databas: `universitydb`
--

-- --------------------------------------------------------

--
-- Tabellstruktur `enrollment`
--

CREATE TABLE `enrollment` (
  `Enrollment ID` int(11) NOT NULL,
  `StudentID` int(11) NOT NULL,
  `Course Name` varchar(30) NOT NULL,
  `Enrollment year` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellstruktur `professor`
--

CREATE TABLE `professor` (
  `Professor ID` int(11) NOT NULL,
  `Professor Name` varchar(30) NOT NULL,
  `Password` varchar(30) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Department ID` int(11) NOT NULL,
  `Date of hire` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellstruktur `student`
--

CREATE TABLE `student` (
  `StudentID` int(11) NOT NULL,
  `StudentName` varchar(30) NOT NULL,
  `Password` varchar(30) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Department name` varchar(30) NOT NULL,
  `Enrollment date` date NOT NULL,
  `Total credits` decimal(3,1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


--
-- Index för dumpade tabeller
--

--
-- Index för tabell `enrollment`
--
ALTER TABLE `enrollment`
  ADD PRIMARY KEY (`Enrollment ID`),
  ADD KEY `StudentID` (`StudentID`);

--
-- Index för tabell `professor`
--
ALTER TABLE `professor`
  ADD PRIMARY KEY (`Professor ID`);

--
-- Index för tabell `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`StudentID`);

--
-- AUTO_INCREMENT för dumpade tabeller
--

--
-- AUTO_INCREMENT för tabell `enrollment`
--
ALTER TABLE `enrollment`
  MODIFY `Enrollment ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT för tabell `professor`
--
ALTER TABLE `professor`
  MODIFY `Professor ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT för tabell `student`
--
ALTER TABLE `student`
  MODIFY `StudentID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restriktioner för dumpade tabeller
--

--
-- Restriktioner för tabell `enrollment`
--
ALTER TABLE `enrollment`
  ADD CONSTRAINT `FK1` FOREIGN KEY (`StudentID`) REFERENCES `student` (`StudentID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
