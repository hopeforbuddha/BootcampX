select students.name as student, avg(assignment_submissions.duration) as average_assignment_duration, avg(assignments.duration) as average_estimated_duration
from students
join assignment_submissions on student_id = students.id
join assignments on assignments.id = assignment_id
where end_date is null
GROUP by student
having avg(assignment_submissions.duration) < avg(assignments.duration)
ORDER by average_assignment_duration DESC;

-- SELECT students.name as student, avg(assignment_submissions.duration) as average_assignment_duration, avg(assignments.duration) as average_estimated_duration
-- FROM students
-- JOIN assignment_submissions ON student_id = students.id
-- JOIN assignments ON assignments.id = assignment_id
-- WHERE end_date IS NULL
-- GROUP BY student
-- HAVING avg(assignment_submissions.duration) < avg(assignments.duration)
-- ORDER BY average_assignment_duration;
