CREATE PROCEDURE new_enrolment(
    o_Student_ID INT,
    o_Course_Name VARCHAR(20),
    o_Enrolment_Date DATE
)
BEGIN
    INSERT INTO `enrolment` (Student_ID, Course_Name, Enrolment_Date)
    VALUES (o_Student_ID, o_Course_Name, o_Enrolment_Date);
END;