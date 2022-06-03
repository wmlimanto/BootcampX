SELECT students.name as student, avg(assignment_submissions.duration) as average_assignment_duration
FROM students
JOIN assignment_submissions ON students.id = student_id
WHERE end_date IS NULL
GROUP BY students.name
ORDER BY average_assignment_duration DESC;