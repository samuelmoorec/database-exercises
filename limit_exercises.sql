USE employees;

SELECT DISTINCT last_name FROM employees ORDER BY last_name DESC LIMIT 10;

SELECT * FROM employees WHERE hire_date LIKE '199%' AND birth_date LIKE '%-12-25' LIMIT 5;

SELECT * FROM employees;

SELECT NOW();
