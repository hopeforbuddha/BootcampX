SELECT name, id, email, cohort_id
FROM students
where NOT LIKE (email, '%gmail.com')
  and (phone IS NULL);