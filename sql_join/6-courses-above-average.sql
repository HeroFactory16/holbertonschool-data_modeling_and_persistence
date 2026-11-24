SELECT
    courses.title AS course_title
FROM courses
LEFT JOIN enrollments ON enrollments.course_id = courses.id
GROUP BY courses.id, courses.title
HAVING COUNT(enrollments.student_id) > (
    SELECT AVG(course_count)
    FROM (
        SELECT COUNT(enrollments.student_id) AS course_count
        FROM courses
        LEFT JOIN enrollments ON enrollments.course_id = courses.id
        GROUP BY courses.id
    ) AS counts
)
ORDER BY course_title ASC;