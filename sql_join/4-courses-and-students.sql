SELECT
    courses.title AS course_title,
    students.name  AS student_name
FROM courses
LEFT JOIN students ON students.id = enrollments.student_id
LEFT JOIN enrollments ON enrollments.student_id = students.id
ORDER BY courses.title, students.name;