SELECT
    courses.title AS course_title,
    students.name  AS student_name
FROM students
LEFT JOIN enrollments ON enrollments.student_id = students.id
LEFT JOIN courses ON courses.id = enrollments.course_id
ORDER BY courses.title, students.name;