USE employees;

SELECT CONCAT(emp_no,' - ',last_name,', ',first_name) AS Full_Name, birth_date AS DOB FROM employees LIMIT 10;