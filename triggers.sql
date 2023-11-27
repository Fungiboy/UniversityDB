-- Inserts department table with new head professor
CREATE TRIGGER `insert_head_professor`
AFTER INSERT ON departmenthead
FOR EACH ROW
UPDATE departments
SET Head_Professor_ID = NEW.Head_Professor_ID
WHERE Department_ID = NEW.Department_ID;

-- Updates department table with new head professor, fråga 4
CREATE TRIGGER `update_head_professor`
AFTER UPDATE ON departmenthead
FOR EACH ROW
UPDATE departments
SET Head_Professor_ID = NEW.Head_Professor_ID
WHERE Department_ID = NEW.Department_ID;