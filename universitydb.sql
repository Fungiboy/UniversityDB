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

CREATE TABLE 'enrolment' (
  'EnrolmentID'  INT NOT NULL,
  'StudentID' INT NOT NULL,
  'CourseName' VARCHAR(20) NOT NULL,
  'EnrolmentYear' DATE NOT NULL,
);

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

-- --------------------------------------------------------

--
-- Tabellstruktur `Departments`
--

CREATE TABLE `Departments` (
  'DepartemntID' int(11) NOT NULL,
  'DepartmentName' varchar(31) NOT NULL,
  'ProfessorID' int(11) NOT NULL,
  'NumberOfCourses' int(11) NOT NULL,
  'HeadProfessorID' int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellstruktur `DepartmentHead`
--

CREATE TABLE `departmentHead` (
  'HeadProfessorID' int(11) NOT NULL,
  'ProfessorID' int(11) NOT NULL,
  'DepartmentID' int(11) NOT NULL,
  'CourseName' varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellstruktur `DepartmentHead`
--

CREATE TABLE 'course' (
  'CourseName' VARCHAR(20) NOT NULL,
  'ProfessorID' INT(11) NOT NULL,
  'Credits' INT(2,1) NOT NULL,
  'DepartmentID' INT(11) NOT NULL,
  'Nr_of_Students' INT(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Index för dumpade tabeller
--

--
-- Index för tabell `enrollment`
--
ALTER TABLE `enrolment`
  ADD PRIMARY KEY (`Enrolment ID`),
  ADD FOREIGN KEY (`StudentID`) REFERENCES 'student' ('StudentID');
  ADD FOREIGN KEY (`CourseName`) REFERENCES 'course' ('CourseName');

--
-- Index för tabell `professor`
--
ALTER TABLE `professor`
  ADD PRIMARY KEY (`Professor ID`);
  ADD FOREIGN KEY (`DepartmentID`) REFERENCES 'Depratments' ('DepartmentID');
--
-- Index för tabell `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`StudentID`);

--
-- Index för tabell `student`
--
ALTER TABLE `Departments`
  ADD PRIMARY KEY (`DepartmentID`);
  ADD FOREIGN KEY (`ProfessorID`) REFERENCES 'professor' ('ProfessorID');
  ADD FOREIGN KEY (`HeadProfessorID`) REFERENCES 'DepartmentHead' ('HeadProfessorID');

--
-- Index för tabell `student`
--
ALTER TABLE `departmentHead`
  ADD PRIMARY KEY (`HeadProfessorID`);
  ADD FOREIGN KEY (`ProfessorID`) REFERENCES 'professor' ('ProfessorID');
  ADD FOREIGN KEY (`DepartmentID`) REFERENCES 'Department' ('DepartmentID');
  ADD FOREIGN KEY (`CourseName`) REFERENCES 'course' ('CourseName');

--
-- Index för tabell `professor`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`CourseName`);
  ADD FOREIGN KEY (`ProfessorID`) REFERENCES 'professor' ('ProfessorID');
  ADD FOREIGN KEY (`DepartmentID`) REFERENCES 'deparments' ('DepartmentID');
--
-- AUTO_INCREMENT för dumpade tabeller
--

--
-- AUTO_INCREMENT för tabell `enrollment`
--
ALTER TABLE `enrolment`
  MODIFY `EnrolmentID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT för tabell `professor`
--
ALTER TABLE `professor`
  MODIFY `ProfessorID` int(11) NOT NULL AUTO_INCREMENT;

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
ALTER TABLE `enrolment`
  ADD CONSTRAINT `FK1` FOREIGN KEY (`StudentID`) REFERENCES `student` (`StudentID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
