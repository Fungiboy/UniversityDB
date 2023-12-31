-- Räknar hur många professorer som tillhör varje department
SELECT departments.Department_Name, COUNT(professor.Professor_ID) AS professor_count
FROM departments
LEFT JOIN professor ON departments.Department_ID = professor.Department_ID
GROUP BY departments.Department_ID, departments.Department_Name;

-- Visar vilka kurser en spedifik student tillhör
CREATE PROCEDURE `get_student_course`(
    o_Student_ID INT
)
BEGIN
    SELECT Student_ID, Course_Name
    FROM enrolment
    WHERE Student_ID = o_Student_ID;
END;

-- Lista alla kurser som erbjuds av en department.
SELECT course.Course_Name
FROM course
JOIN departments ON course.Department_ID = departments.Department_ID
WHERE departments.Department_Name = 'Science';

-- Visar department head för varje department.
SELECT departments.Department_Name, professor.Professor_Name AS department_head
FROM departments
JOIN professor ON departments.Head_Professor_ID = professor.Professor_ID;