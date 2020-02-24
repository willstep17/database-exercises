USE employees;

/* Find all the employees with the same hire date as employee 101010 */
SELECT CONCAT(first_name, ' ', last_name) AS 'Employee Name', hire_date AS 'Hire Date'
FROM employees
WHERE hire_date IN (
    SELECT hire_date
    FROM employees
    WHERE emp_no = '101010'
);

/* Find all the titles held by all employees with the first name Aamod */
SELECT title AS 'Employee Title' FROM titles
WHERE emp_no IN (
    SELECT emp_no
    FROM employees
    WHERE first_name = 'Aamod'
);

/* Find all the current department managers that are female */
SELECT CONCAT(first_name, ' ', last_name) AS 'Employee Name'
FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM dept_manager
    WHERE to_date LIKE '9999-01-01'
) AND gender = 'F';

/* Find all the department names that currently have female managers */
SELECT dept_name AS 'Department Name'
FROM departments
WHERE dept_no IN (
    SELECT d.dept_no
    FROM employees e
    JOIN dept_manager dm ON dm.emp_no = e.emp_no
    JOIN departments d on dm.dept_no = d.dept_no
    WHERE e.gender = 'F' AND dm.to_date = '9999-01-01')
ORDER BY dept_name;

/* Find the first and last name of the employee with the highest salary */
SELECT CONCAT(first_name, ' ', last_name)
FROM employees AS e
JOIN salaries s on e.emp_no = s.emp_no
WHERE s.salary IN (
    SELECT MAX(salary) FROM salaries
);

