SELECT
    courses.title AS course_title,
    instructors.name AS instructor_name
FROM courses
LEFT JOIN instructors ON instructors.id = courses.instructor_id
ORDER BY course_title ASC;