SELECT students.name
FROM students
WHERE EXISTS (
    SELECT 1
    FROM enrollments
    WHERE enrollments.student_id = students.id
);