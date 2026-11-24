SELECT
    courses.title AS course_title,
    COUNT(registrations.student_id) AS student_count
FROM courses
LEFT JOIN registrations ON registrations.course_id = courses.id
GROUP BY courses.id, courses.title
ORDER BY student_count DESC, course_title ASC;