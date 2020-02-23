-- # USE join_test_db;
-- # #
-- # # SELECT users.name as user_name, roles.name as role_name
-- # # FROM users
-- # # JOIN roles ON users.role_id = roles.id;
-- # #
-- # # SELECT users.name AS user_name, roles.name AS role_name
-- # # FROM users
-- # # LEFT JOIN roles ON users.role_id = roles.id;
-- # #
-- # # SELECT users.name as user_name, roles.name as role_name
-- # # FROM roles
-- # # LEFT JOIN users ON users.role_id = roles.id;

-- USE employees;
--
-- SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name
-- FROM employees as e
--          JOIN dept_emp as de
--               ON de.emp_no = e.emp_no
--          JOIN departments as d
--               ON d.dept_no = de.dept_no
-- WHERE de.to_date = '9999-01-01' AND e.emp_no = 10001;

USE join_test_db;
TRUNCATE users;

INSERT INTO users (name, email, role_id) VALUES
('Michael Jackson', 'jackson@gmail.com', NULL),
('Shelby', 'seashell.com', 2),
('Chris', 'chris@gmail.com', 2),
('Noland', 'lando@gmail.com', 2);

INSERT INTO users (name, email, role_id) VALUES
('Will', 'willstep@gmail.com', 1),
('Trant', 'codeman@gmail.com', 3),
('Daniel', 'java@java', 2);

SELECT users.name AS user_name, roles.name AS role_name
FROM users
JOIN roles ON users.role_id = roles.id;