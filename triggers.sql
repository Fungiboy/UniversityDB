CREATE TRIGGER `enrolment_date_student_table`
AFTER INSERT ON enrolment
FOR EACH ROW
UPDATE student
SET Enrolment_date = CURRENT_DATE
WHERE Student_ID = NEW.Student_ID;