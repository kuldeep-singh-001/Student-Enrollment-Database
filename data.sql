-- Students
INSERT INTO Students (first_name, last_name, email, city) VALUES
('Alice', 'Johnson', 'alice@example.com', 'New York'),
('Bob', 'Smith', 'bob@example.com', 'Chicago'),
('Carol', 'Lee', 'carol@example.com', 'Los Angeles'),
('David', 'Brown', 'david@example.com', 'New York'),
('Eve', 'Miller', 'eve@example.com', 'Boston'); 

-- Instructors
INSERT INTO Instructors (first_name, last_name, email) VALUES
('Alan', 'Turing', 'alan@univ.edu'),
('Grace', 'Hopper', 'grace@univ.edu'),
('Ada', 'Lovelace', 'ada@univ.edu');

-- Courses
INSERT INTO Courses (title, instructor_id, price) VALUES
('Intro to Programming', 1, 0.0),
('Data Structures', 2, 49.99),
('Algorithms', 2, 59.99),
('Databases', NULL, 39.99),   
('Networks', 3, 29.99);      

-- Enrollments
INSERT INTO Enrollments (student_id, course_id, enroll_date, grade) VALUES
(1, 1, '2024-01-10', 'A'),
(1, 2, '2024-02-15', 'B+'),
(2, 2, '2024-02-20', 'A-'),
(3, 4, '2024-03-01', 'B'),  
(4, 3, '2024-03-10', NULL);  
-- Note: Course 5 (Networks) has NO enrollments; Student 5 (Eve) has NO enrollments.
