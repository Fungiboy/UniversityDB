-- Updates the students enrolment date on the students table  
CREATE TRIGGER `enrolment_date_student_table`
AFTER INSERT ON enrolment
FOR EACH ROW
UPDATE student
SET Enrolment_Date = NEW.Enrolment_Date
WHERE Student_ID = NEW.Student_ID;

-- Updates department table with new head professor
CREATE TRIGGER `update_head_professor`
AFTER UPDATE ON departmenthead
FOR EACH ROW
UPDATE departments
SET Head_Professor_ID = NEW.Head_Professor_ID
WHERE Department_ID = NEW.Department_ID;