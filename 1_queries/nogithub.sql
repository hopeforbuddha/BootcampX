SELECT name, email, phone
FROM students
WHERE end_date IS NOT null
  and github IS null;