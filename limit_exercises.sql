USE employees;

SELECT DISTINCT last_name
FROM employees
ORDER BY last_name DESC LIMIT 10;

SELECT * FROM employees
WHERE (birth_date LIKE '%12-25')
  AND (hire_date LIKE '199%')
ORDER BY birth_date, hire_date DESC LIMIT 5 OFFSET 45;