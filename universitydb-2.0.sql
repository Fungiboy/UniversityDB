--
-- Databas: `universitydb`
--

-- --------------------------------------------------------

--
-- Tabellstruktur `professor`
--

CREATE TABLE `professor` (
  `Professor_ID` INT(11) NOT NULL AUTO_INCREMENT,
  `Professor_Name` VARCHAR(30) NOT NULL,
  `Password` VARCHAR(30) NOT NULL,
  `Email` VARCHAR(30) NOT NULL,
  `Department_ID` INT(11),
  `Date_of_hire` DATE NOT NULL,
  PRIMARY KEY (Professor_ID)
);

-- --------------------------------------------------------

--
-- Tabellstruktur `student`
--

CREATE TABLE `student` (
  `Student_ID` INT(11) NOT NULL AUTO_INCREMENT,
  `Student_Name` VARCHAR(30) NOT NULL,
  `Password` VARCHAR(30) NOT NULL,
  `Email` VARCHAR(30) NOT NULL,
  `Enrolment_date` DATE,
  `Total_credits` DECIMAL(3,1),
  PRIMARY KEY (Student_ID)
);

-- --------------------------------------------------------

--
-- Tabellstruktur `Departments`
--

CREATE TABLE `departments` (
  `Department_ID` INT(11) NOT NULL AUTO_INCREMENT,
  `Department_Name` VARCHAR(31) NOT NULL,
  `Number_Of_Courses` INT(11),
  `Head_Professor_ID` INT(11) NOT NULL,
  PRIMARY KEY (Department_ID)
);

-- --------------------------------------------------------

--
-- Tabellstruktur `DepartmentHead`
--

CREATE TABLE `course` (
  `Course_Name` VARCHAR(20) NOT NULL,
  `Professor_ID` INT(11),
  `Credits` INT(2) NOT NULL,
  `Department_ID` INT(11),
  `Nr_of_Students` INT(3),
  PRIMARY KEY (Course_Name)
);



-- --------------------------------------------------------

--
-- Tabellstruktur `enrollment`
--

CREATE TABLE `enrolment` (
  `Enrolment_ID`  INT(11) NOT NULL AUTO_INCREMENT,
  `Student_ID` INT(11) NOT NULL,
  `Course_Name` VARCHAR(20) NOT NULL,
  `Enrolment_Date` DATE NOT NULL,
  PRIMARY KEY (Enrolment_ID)
);



-- --------------------------------------------------------

--
-- Tabellstruktur `DepartmentHead`
--

CREATE TABLE `departmentHead` (
  `Head_Professor_ID` INT(11) NOT NULL,
  `Professor_ID` INT(11) NOT NULL,
  `Department_ID` INT(11) NOT NULL,
);


-- --------------------------------------------------------

--
-- Index för tabell `enrollment`
--
ALTER TABLE `enrolment`
  ADD FOREIGN KEY (`Student_ID`) REFERENCES `student` (`Student_ID`),
  ADD FOREIGN KEY (`Course_Name`) REFERENCES `course` (`Course_Name`);

--
-- Index för tabell `professor`
--
ALTER TABLE `professor`
  ADD FOREIGN KEY (`Department_ID`) REFERENCES `departments` (`Department_ID`);

--
-- Index för tabell `departments`
--
ALTER TABLE `departments`
  ADD FOREIGN KEY (`Professor_ID`) REFERENCES `professor` (`Professor_ID`),
  ADD FOREIGN KEY (`Head_Professor_ID`) REFERENCES `departmentHead` (`Head_Professor_ID`);

--
-- Index för tabell `departmentHead`
--
ALTER TABLE `departmentHead`
  ADD FOREIGN KEY (`Professor_ID`) REFERENCES `professor` (`Professor_ID`),
  ADD FOREIGN KEY (`Department_ID`) REFERENCES `departments` (`Department_ID`),

--
-- Index för tabell `course`
--
ALTER TABLE `course`
  ADD FOREIGN KEY (`Professor_ID`) REFERENCES `professor` (`Professor_ID`),
  ADD FOREIGN KEY (`Department_ID`) REFERENCES `departments` (`Department_ID`);