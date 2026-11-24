SELECT
    students.name AS student_name,
    courses.title AS course_title
FROM registrations
JOIN students ON students.id = registrations.student_id
JOIN courses ON courses.id = registrations.course_id
ORDER BY student_name ASC, course_title ASC;