select students.name as student, avg(assignment_submissions.duration) as average_assignment_duration
from students
join assignment_submissions on student_id = students.id
where end_date IS null
GROUP BY student
ORDER BY average_assignment_duration DESC;

-- SELECT students.name as student, avg(assignment_submissions.duration) as average_assignment_duration
-- FROM students
-- JOIN assignment_submissions ON student_id = students.id
-- WHERE end_date IS NULL
-- GROUP BY student
-- ORDER BY average_assignment_duration DESC;