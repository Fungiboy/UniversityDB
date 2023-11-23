--
-- Databas: `universitydb`
--

-- --------------------------------------------------------

--
-- Tabellstruktur `professor`
--

CREATE TABLE `professor2` (
  'Professor_ID' INT(11) NOT NULL AUTO_INCREMENT,
  'Professor_Name' VARCHAR(30) NOT NULL,
  'Password' VARCHAR(30) NOT NULL,
  `Email` VARCHAR(30) NOT NULL,
  `Department_ID` INT(11),
  `Date_of_hire` DATE NOT NULL,
  PRIMARY KEY (Professor_ID)
);

-- --------------------------------------------------------

--
-- Tabellstruktur `student`
--

CREATE TABLE `student2` (
  `Student_ID` INT(11) NOT NULL AUTO_INCREMENT,
  `Student_Name` VARCHAR(30) NOT NULL,
  `Password` VARCHAR(30) NOT NULL,
  `Email` VARCHAR(30) NOT NULL,
  `Department_name` VARCHAR(30),
  `Enrolment_date` DATE,
  `Total_credits` DECIMAL(3,1),
  PRIMARY KEY (Student_ID)
);

-- --------------------------------------------------------

--
-- Tabellstruktur `Departments`
--

CREATE TABLE `departments2` (
  'Department_ID' INT(11) NOT NULL AUTO_INCREMENT,
  'Department_Name' VARCHAR(31) NOT NULL,
  'Professor_ID' INT(11) NOT NULL,
  'Number_Of_Courses' INT(11),
  'Head_Professor_ID' INT(11) NOT NULL,
  PRIMARY KEY (Department_ID)
);

-- --------------------------------------------------------

--
-- Tabellstruktur `DepartmentHead`
--

CREATE TABLE 'course2' (
  'Course_Name' VARCHAR(20) NOT NULL AUTO_INCREMENT,
  'Professor_ID' INT(11),
  'Credits' INT(2) NOT NULL,
  'Department_ID' INT(11),
  'Nr_of_Students' INT(3),
  PRIMARY KEY (Course_Name)
);



-- --------------------------------------------------------

--
-- Tabellstruktur `enrollment`
--

CREATE TABLE 'enrolment2' (
  'Enrolment_ID'  INT(11) NOT NULL AUTO_INCREMENT,
  'Student_ID' INT(11) NOT NULL,
  'Course_Name' VARCHAR(20) NOT NULL,
  'Enrolment_Date' DATE NOT NULL,
  PRIMARY KEY (Enrolment_ID)
);



-- --------------------------------------------------------

--
-- Tabellstruktur `DepartmentHead`
--

CREATE TABLE `departmentHead2` (
  'Head_Professor_ID' INT(11) NOT NULL,
  'Professor_ID' INT(11) NOT NULL,
  'Department_ID' INT(11) NOT NULL,
  'Course_Name' VARCHAR(20) NOT NULL
);


-- --------------------------------------------------------

--
-- Index för tabell `enrollment`
--
ALTER TABLE `enrolment2`
  ADD FOREIGN KEY (`Student_ID`) REFERENCES 'student' ('Student_ID');
  ADD FOREIGN KEY (`Course_Name`) REFERENCES 'course' ('Course_Name');

--
-- Index för tabell `professor`
--
ALTER TABLE `professor2`
  ADD FOREIGN KEY (`Department_ID`) REFERENCES 'Depratments' ('Department_ID');
--
-- Index för tabell `student`
--
ALTER TABLE `studen2`
  ADD PRIMARY KEY (`Student_ID`);

--
-- Index för tabell `departments`
--
ALTER TABLE `departments2`
  ADD FOREIGN KEY (`Professor_ID`) REFERENCES 'professor' ('Professor_ID');
  ADD FOREIGN KEY (`Head_Professor_ID`) REFERENCES 'departmentHead' ('Head_Professor_ID');

--
-- Index för tabell `departmentHead`
--
ALTER TABLE `departmentHead2`
  ADD FOREIGN KEY (`Professor_ID`) REFERENCES 'professor' ('Professor_ID');
  ADD FOREIGN KEY (`Department_ID`) REFERENCES 'Department' ('Department_ID');
  ADD FOREIGN KEY (`Course_Name`) REFERENCES 'course' ('Course_Name');

--
-- Index för tabell `course`
--
ALTER TABLE `course2`
  ADD FOREIGN KEY (`Professor_ID`) REFERENCES 'professor' ('Professor_ID');
  ADD FOREIGN KEY (`Department_ID`) REFERENCES 'deparments' ('Department_ID');