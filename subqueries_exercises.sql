USE employees;

SELECT CONCAT(first_name, ' ', last_name) AS 'Employee Name', hire_date AS 'Hire Date'
FROM employees
WHERE hire_date IN (
    SELECT hire_date
    FROM employees
    WHERE emp_no = '101010'
);

SELECT CONCAT(e.first_name, ' ', e.last_name) AS 'Employee Name', t.title AS 'Employee Title'
FROM employees AS e
JOIN titles AS t ON e.emp_no = t.emp_no
WHERE e.first_name IN (
    SELECT first_name
    FROM employees
    WHERE first_name = 'Aamod'
);

SELECT CONCAT(first_name, ' ', last_name) AS 'Employee Name'
FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM dept_manager
    WHERE to_date LIKE '9999-01-01'
) AND gender = 'F';