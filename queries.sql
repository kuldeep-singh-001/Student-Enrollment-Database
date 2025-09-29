--  -------** ALL TABLES **------------------
select * from Students;
select * from Instructors;
select * from Courses;
select * from Enrollments;



-- 1) INNER JOIN: Students with their enrollments
SELECT s.student_id, s.first_name, s.last_name,
       e.enrollment_id, e.course_id
FROM Students AS s
INNER JOIN Enrollments AS e
  ON s.student_id = e.student_id;


-- 2) LEFT JOIN: All students, even without enrollments
SELECT s.student_id, s.first_name, s.last_name,
       e.enrollment_id, e.course_id
FROM Students AS s
LEFT JOIN Enrollments AS e
  ON s.student_id = e.student_id;


-- 3) RIGHT JOIN :
-- All courses, even without enrollments
SELECT c.course_id, c.title,
       e.enrollment_id, e.student_id
FROM Courses AS c
LEFT JOIN Enrollments AS e
  ON c.course_id = e.course_id;


-- 4) FULL OUTER JOIN :
-- All students and all enrollments
SELECT s.student_id, s.first_name, s.last_name,
       e.enrollment_id, e.course_id
FROM Students AS s
LEFT JOIN Enrollments AS e
  ON s.student_id = e.student_id

UNION

SELECT s.student_id, s.first_name, s.last_name,
       e.enrollment_id, e.course_id
FROM Enrollments AS e
LEFT JOIN Students AS s
  ON e.student_id = s.student_id;


-----------------------------------MULTI-JOIN EXAMPLES-----------------------------------

-- 1) Students + Enrollments + Courses
-- Show students and their course titles
SELECT s.student_id, s.first_name, s.last_name,
       c.course_id, c.title AS course_title,
       e.enroll_date
FROM Students AS s
LEFT JOIN Enrollments AS e
  ON s.student_id = e.student_id
LEFT JOIN Courses AS c
  ON e.course_id = c.course_id;


-- 2) Students + Enrollments + Courses + Instructors
-- Show students, their courses, and the instructor
SELECT s.student_id, s.first_name AS student_first, s.last_name AS student_last,
       c.course_id, c.title AS course_title,
       i.instructor_id, i.first_name AS instructor_first, i.last_name AS instructor_last,
       e.enroll_date, e.grade
FROM Enrollments AS e
INNER JOIN Students AS s
  ON e.student_id = s.student_id
INNER JOIN Courses AS c
  ON e.course_id = c.course_id
INNER JOIN Instructors AS i
  ON c.instructor_id = i.instructor_id;


-- 3) Courses + Enrollments + Students (all courses, even empty ones)
SELECT c.course_id, c.title AS course_title,
       s.student_id, s.first_name, s.last_name
FROM Courses AS c
LEFT JOIN Enrollments AS e
  ON c.course_id = e.course_id
LEFT JOIN Students AS s
  ON e.student_id = s.student_id;
