SELECT
    students.name AS student_name
FROM students
WHERE EXISTS (
    SELECT 1
    FROM registrations
    WHERE registrations.student_id = students.id
)
ORDER BY student_name ASC;