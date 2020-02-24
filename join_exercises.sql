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

USE employees;

/* Show each department along with the name of the current manager for that department. */
SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager', e.emp_no
FROM departments AS d
JOIN dept_manager AS dm
ON dm.dept_no = d.dept_no
JOIN employees AS e
ON e.emp_no = dm.emp_no
WHERE dm.to_date = '9999-01-01'
ORDER BY d.dept_name;

/* Find the name of all departments currently managed by women. */
SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager', e.emp_no
FROM departments AS d
JOIN dept_manager AS dm
ON dm.dept_no = d.dept_no
JOIN employees AS e
ON e.emp_no = dm.emp_no
WHERE dm.to_date = '9999-01-01' AND e.gender = 'F'
ORDER BY d.dept_name;

/* Find the current titles of employees currently working in the Customer Service department. */
SELECT t.title AS Title, count(t.title)
FROM employees AS e
JOIN titles AS t
ON e.emp_no = t.emp_no
JOIN dept_emp AS de
ON t.emp_no = de.emp_no
JOIN departments AS d
ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Customer Service'
GROUP BY t.title;


SELECT * FROM employees WHERE emp_no = 110039;

/* Joins only rows that have values in the mentioned keys */
SELECT departments.dept_name AS dept_name, dept_manager.dept_no AS dept_no
FROM departments
JOIN dept_manager ON departments.dept_no = dept_manager.dept_no;

SELECT employees.emp_no AS emp_no, employees.first_name, dept_manager.dept_no AS dept_no
FROM employees
JOIN dept_manager ON employees.emp_no = dept_manager.emp_no;

# USE join_test_db;
# TRUNCATE users;
#
# INSERT INTO users (name, email, role_id) VALUES
# ('Michael Jackson', 'jackson@gmail.com', NULL),
# ('Shelby', 'seashell.com', 2),
# ('Chris', 'chris@gmail.com', 2),
# ('Noland', 'lando@gmail.com', 2);
#
# INSERT INTO users (name, email, role_id) VALUES
# ('Will', 'willstep@gmail.com', 1),
# ('Trant', 'codeman@gmail.com', 3),
# ('Daniel', 'java@java', 2);
#
# /* Joins only rows that have values in the mentioned keys */
# SELECT users.name AS user_name, roles.name AS role_name
# FROM users
# JOIN roles ON users.role_id = roles.id;
#
# /* Retrieves ALL records of left table (users) */
# SELECT users.name AS user_name, roles.name AS role_name
# FROM users
# LEFT JOIN roles ON users.role_id = roles.id;
#
# /* All RIGHT JOINS can be rewritten as LEFT JOINS */
# SELECT users.name AS user_name, roles.name AS role_name
# FROM roles
# LEFT JOIN users ON users.role_id = roles.id;
#
# SELECT roles.name AS role_name, COUNT(users.name) AS users_per_role
# FROM users
# LEFT JOIN roles ON users.role_id = roles.id
# GROUP BY roles.name;

