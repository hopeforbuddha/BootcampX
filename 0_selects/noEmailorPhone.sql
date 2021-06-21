SELECT name, id, cohort_id
FROM students
where (email IS NULL)
  or (phone IS NULL);