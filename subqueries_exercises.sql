USE employees;

SELECT CONCAT(employees.employees.first_name,', ',employees.employees.last_name) Name, employees.employees.birth_date DOB
FROM employees
WHERE birth_date IN (
  SELECT employees.employees.birth_date
  FROM employees
  WHERE employees.employees.emp_no = '101010');

SELECT employees.titles.title Title
from titles
  WHERE employees.titles.title IN (
    SELECT employees.titles.title
    FROM employees
    WHERE employees.employees.first_name = 'Aamod');

SELECT first_name, last_name FROM employees
WHERE emp_no IN
      (SELECT emp_no FROM dept_manager
       WHERE CURRENT_DATE BETWEEN from_date AND to_date)
  AND gender = 'F';