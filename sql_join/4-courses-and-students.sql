SELECT
    students.name  AS student_name,
    courses.title AS course_title
FROM students
LEFT JOIN enrollments ON enrollments.student_id = students.id
LEFT JOIN courses ON courses.id = enrollments.course_id
ORDER BY students.name, courses.title;