-- Lägger till en ny professor till en department.
INSERT INTO professor (Professor_ID, Professor_Name, Password, Email, Department_ID, Date_of_hire)
VALUES (17, 'name', 'password', 'email', 3, '2023-04-04');


SELECT * FROM professor;

-- Tillägger en ny department head.
UPDATE departments
SET Head_Professor_ID = 15
WHERE Department_ID = 1;


SELECT * FROM departments;

-- Registrera en student för en kurs.
CALL new_enrolment(9, 'English', CURRENT_DATE);

SELECT * FROM enrolment WHERE Student_ID = 9;

-- Lägga till en ny kurs till en department.
INSERT INTO course (Course_Name, Professor_ID, Credits, Department_ID, Nr_of_Students)
VALUES ('course name', 7, 30, 1, 10);


SELECT * FROM course;