select assignments.day as day, count(assignments.id) as total_assignments
from assignments
GROUP by assignments.day
having count(assignments.id) >= 10
ORDER by day;