USE employees;

SELECT * FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
AND gender = 'M'
ORDER BY first_name ASC, last_name ASC;

SELECT * FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
  AND gender = 'M'
ORDER BY last_name ASC, first_name ASC;

SELECT * FROM employees
WHERE first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya';

SELECT CONCAT(first_name, ' ', last_name) FROM employees
WHERE (last_name LIKE 'E%') OR (last_name LIKE '%E');

SELECT CONCAT(first_name, ' ', last_name) FROM employees
WHERE (last_name LIKE 'E%') AND (last_name LIKE '%E');

/*Want to screen out the most rows as quickly as possible.
  Much less likely to be born on Christmas than in the 90s*/
SELECT CONCAT(first_name, ' ', last_name), DATEDIFF(CURDATE(), hire_date)
FROM employees
WHERE (birth_date LIKE '%12-25')
AND (hire_date LIKE '199%');

SELECT * FROM employee
WHERE birth_date LIKE '%12-25';

SELECT * FROM employees
WHERE last_name LIKE '%q%';

SELECT * FROM employees
WHERE (last_name LIKE '%q%')
AND (last_name NOT LIKE '%qu%');