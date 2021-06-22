select cohorts.name as cohort_name, count(students.cohort_id) as student_count
from cohorts
join students on students.cohort_id = cohort_id
where cohorts.id = cohort_id
GROUP by cohort_name
having count(students.cohort_id) >= 18
ORDER by student_count;