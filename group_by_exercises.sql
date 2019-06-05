USE employees;

SELECT DISTINCT title AS Title, COUNT(*) AS PeopleWithThisTitle FROM titles GROUP BY title;

SELECT DISTINCT last_name AS Last_Name, first_name AS First_Name, COUNT(*) AS PeopleWithThisName FROM employees WHERE last_name LIKE '%e' AND last_name LIKE 'e%' GROUP BY last_name,first_name ASC;

SELECT DISTINCT last_name AS Last_Name, COUNT(*) AS PeopleWithThisName FROM employees WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%' GROUP BY last_name ASC;

SELECT COUNT(*) AS Gender FROM employees WHERE first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya' GROUP BY gender;

