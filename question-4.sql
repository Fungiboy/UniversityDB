-- Lägger till en ny professor till en department.
INSERT INTO professor (Professor_Name, Password, Email, Department_ID, Date_of_hire)
VALUES ('name', 'password', 'email', 3, '2023-04-04');

SELECT * FROM professor;

-- Tillägger en ny department head.
UPDATE departmenthead
SET Head_Professor_ID = 9
WHERE Department_ID = 1;
CALL update_professorID_to_head_professor();

SELECT * FROM departmentHead;

-- Registrera en student för en kurs.
CALL new_enrolment(9, 'English', CURRENT_DATE);

SELECT * FROM enrolment WHERE Student_ID = 9;