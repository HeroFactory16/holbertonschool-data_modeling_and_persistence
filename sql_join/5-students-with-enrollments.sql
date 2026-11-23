SELECT students.name AS student_name
FROM students
WHERE stdents.id IN (
    SELECT enrollments.student_id
    FROM enrollments
);