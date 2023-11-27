-- Enroll a student in a non-exitsting course
CALL new_enrolment(9, 'non-existing course', CURRENT_DATE);

-- Promote a non-existing professor as a department head
CALL get_dep_head(20,1);