CREATE TABLE 'course' (
  'Course_Name' VARCHAR(20) NOT NULL AUTO_INCREMENT,
  'Professor_ID' INT(11),
  'Credits' INT(2) NOT NULL,
  'Department_ID' INT(11),
  'Nr_of_Students' INT(3),
  PRIMARY KEY (Course_Name)
);

-- Inserting courses and theit credits into the table
INSERT INTO course (CourseName, credits)
VALUES
    ('Biology', 60),
    ('Chemistry', 70),
    ('Physics', 50),
    ('English', 60),
    ('German', 40),
    ('Swedish', 35),
    ('History', 40),
    ('Math', 80),
    ('Art', 30),
    ('Sociology', 20),
    ('Film Studies', 45),
    ('Creative writing', 15),
    ('Photography', 25);
    