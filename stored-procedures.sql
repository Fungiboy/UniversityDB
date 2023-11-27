-- Enroll a new student, fråga 4 och 5
CREATE PROCEDURE `new_enrolment`(
    o_Student_ID INT,
    o_Course_Name VARCHAR(20),
    o_Enrolment_Date DATE
)
BEGIN
    DECLARE courseExists INT;

    SELECT COUNT(*) INTO courseExists
    FROM enrolment
    WHERE Course_Name = o_Course_Name;

    IF courseExists > 0 THEN
        INSERT INTO enrolment (Student_ID, Course_Name, Enrolment_Date)
        VALUES (o_Student_ID, o_Course_Name, o_Enrolment_Date);
    ELSE
        SELECT "Error: Course not found!";
    END IF;
END;

-- Promote a new departmentHead, fråga 4 och 5
CREATE PROCEDURE `get_dep_head`(
    o_Professor_ID INT,
    o_Department_ID INT
)
BEGIN
    DECLARE headExists INT;

    SELECT COUNT(*) INTO headExists
    FROM professor
    WHERE Professor_ID = o_Professor_ID;

    IF headExists > 0 THEN
        UPDATE departmenthead SET Professor_ID = o_Professor_ID WHERE o_Department_ID = Department_ID;
        UPDATE departmenthead SET Head_Professor_ID = o_Professor_ID WHERE o_Department_ID = Department_ID;
    ELSE
        SELECT "Error: Professor not found!";
    END IF;
END;
