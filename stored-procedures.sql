-- Creates new enrolments
CREATE PROCEDURE `new_enrolment`(
    o_Student_ID INT,
    o_Course_Name VARCHAR(20),
    o_Enrolment_Date DATE
)
BEGIN
    INSERT INTO `enrolment` (Student_ID, Course_Name, Enrolment_Date)
    VALUES (o_Student_ID, o_Course_Name, o_Enrolment_Date);
END;

-- Gets what courses a student is enroled in
CREATE PROCEDURE `get_student_course`(
    o_Student_ID INT
)
BEGIN
    SELECT Student_ID, Course_Name
    FROM `enrolment`
    WHERE Student_ID = o_Student_ID;
END;

-- Updates Professor_ID to match the Head_Professor_ID
CREATE PROCEDURE `update_professorID_to_head_professor` ()
BEGIN
    UPDATE departmenthead
    SET Professor_ID = Head_Professor_ID;
END;

