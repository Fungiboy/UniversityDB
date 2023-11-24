CREATE PROCEDURE new_enrolment(
    o_Student_ID INT,
    o_Course_Name VARCHAR(20),
    o_Enrolment_Date DATE
)
BEGIN
    INSERT INTO `enrolment` (Student_ID, Course_Name, Enrolment_Date)
    VALUES (o_Student_ID, o_Course_Name, o_Enrolment_Date);
END;

CREATE PROCEDURE `get_student_course`(
    o_Student_ID INT
)
BEGIN
    SELECT Student_ID, Course_Name
    FROM `enrolment`
    WHERE Student_ID = o_Student_ID;
END;