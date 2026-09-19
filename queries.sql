-- EduTrack - Auditoría de Datos - Tablas Relacionales
-- SQL queries
-- 01. Todas las inscripciones con estudiante, curso y porcentaje de completado

SELECT
    students.name,
    courses.title AS course_title,
    enrollments.completion_percentage
FROM enrollments
INNER JOIN students
    ON enrollments.student_id = students.id
INNER JOIN courses
    ON enrollments.course_id = courses.id;

-- 02. Estudiantes que han aprobado al menos un curso

SELECT
    students.name,
    students.email,
    courses.title AS course_title
FROM enrollments
INNER JOIN students
    ON enrollments.student_id = students.id
INNER JOIN courses
    ON enrollments.course_id = courses.id
WHERE enrollments.passed = TRUE;

-- 03. Porcentaje de completado medio por instructor

SELECT
    courses.instructor_name AS instructor,
    AVG(enrollments.completion_percentage) AS average_completion
FROM enrollments
INNER JOIN courses
    ON enrollments.course_id = courses.id
GROUP BY courses.instructor_name
ORDER BY average_completion DESC;

-- 04. Estudiantes sin ninguna inscripción

SELECT
    students.name,
    students.email
FROM students
LEFT JOIN enrollments
    ON students.id = enrollments.student_id
WHERE enrollments.student_id IS NULL;

-- 05. Cursos sin ninguna inscripción

SELECT
    courses.title,
    courses.category
FROM courses
LEFT JOIN enrollments
    ON courses.id = enrollments.course_id
WHERE enrollments.course_id IS NULL;

-- 06. Estudiantes inscritos en más de un curso

SELECT
    students.name,
    COUNT(enrollments.course_id) AS course_count
FROM students
INNER JOIN enrollments
    ON students.id = enrollments.student_id
GROUP BY students.id, students.name
HAVING COUNT(enrollments.course_id) > 1
ORDER BY course_count DESC;

-- 07. Ingresos totales por categoría usando el precio actual de courses

SELECT
    courses.category,
    SUM(courses.monthly_fee) AS total_revenue
FROM enrollments
INNER JOIN courses
    ON enrollments.course_id = courses.id
GROUP BY courses.category
ORDER BY total_revenue DESC;

-- 08. Número de estudiantes actualmente inscritos por instructor

SELECT
    courses.instructor_name AS instructor,
    COUNT(DISTINCT enrollments.student_id) AS student_count
FROM courses
LEFT JOIN enrollments
    ON courses.id = enrollments.course_id
GROUP BY courses.instructor_name
ORDER BY student_count DESC;

-- 09. Inscripciones con student_id sin estudiante correspondiente

SELECT
    enrollments.id,
    enrollments.student_id
FROM enrollments
LEFT JOIN students
    ON enrollments.student_id = students.id
WHERE students.id IS NULL;

-- 10. Inscripciones con course_id sin curso correspondiente

SELECT
    enrollments.id,
    enrollments.course_id
FROM enrollments
LEFT JOIN courses
    ON enrollments.course_id = courses.id
WHERE courses.id IS NULL;