USE employees;

SELECT * FROM employees;

SELECT * FROM employees WHERE first_name = 'Irena' AND gender = 'm'
                           OR first_name = 'Vidya' AND gender = 'm'
                           OR first_name = 'Maya' AND gender = 'm'
                      ORDER BY last_name ASC, first_name ASC;


SELECT * FROM employees WHERE last_name LIKE '%e'
                           OR last_name LIKE 'e%'
                      ORDER BY emp_no DESC;

SELECT * FROM employees WHERE last_name LIKE '%e'
                          AND last_name LIKE 'e%';

SELECT * FROM employees WHERE hire_date LIKE '199%'
                          AND birth_date LIKE '%-12-25';

SELECT * FROM employees WHERE last_name LIKE '%q%'
                          AND last_name NOT LIKE '%qu%';
