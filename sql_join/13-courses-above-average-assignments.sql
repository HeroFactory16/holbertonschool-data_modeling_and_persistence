WITH course_counts AS (
    SELECT
        courses.id AS course_id,
        courses.title AS course_title,
        COUNT(assignments.id) AS assignment_count
    FROM courses
    LEFT JOIN assignments ON assignments.course_id = courses.id
    GROUP BY courses.id, courses.title
)
SELECT
    course_title
FROM course_counts
WHERE assignment_count > (SELECT AVG(assignment_count) FROM course_counts)
ORDER BY course_title ASC;