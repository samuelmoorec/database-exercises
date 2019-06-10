USE employees;

SELECT CONCAT(em.first_name,', ',em.last_name) Name, sal.salary Pay
FROM employees em
JOIN salaries sal ON sal.emp_no = em.emp_no
ORDER BY sal.salary DESC
LIMIT 1;


SELECT CONCAT(em.first_name,', ',em.last_name) Department_Manager, depart.dept_name Department_Name
FROM employees em
JOIN dept_manager dm ON dm.emp_no = em.emp_no
JOIN departments depart ON depart.dept_no = dm.dept_no
WHERE CURRENT_DATE BETWEEN from_date AND to_date ORDER BY Department_Name;

SELECT CONCAT(em.first_name,', ',em.last_name) Department_Manager, depart.dept_name Department_Name
FROM employees em
JOIN dept_manager dm ON dm.emp_no = em.emp_no
JOIN departments depart ON depart.dept_no = dm.dept_no
WHERE CURRENT_DATE BETWEEN from_date AND to_date AND em.gender = 'F' ORDER BY Department_Name;

SELECT title Title, COUNT(title) Count
FROM employees em
JOIN employees.titles title ON title.emp_no = em.emp_no
JOIN dept_emp demp ON demp.emp_no = em.emp_no
JOIN departments depart ON depart.dept_no = demp.dept_no
WHERE CURRENT_DATE BETWEEN demp.from_date AND demp.to_date
AND CURRENT_DATE BETWEEN title.from_date AND title.to_date
AND depart.dept_no = 'd009'
GROUP BY title;

SELECT dep.dept_name Department_Name, CONCAT(em.first_name,', ',em.last_name) Manager, sal.salary Salary
FROM employees em
JOIN employees.dept_manager depMan ON depMan.emp_no = em.emp_no
JOIN employees.departments dep ON dep.dept_no = depMan.dept_no
JOIN employees.salaries sal ON sal.emp_no = em.emp_no
WHERE CURRENT_DATE BETWEEN depMan.from_date AND depMan.to_date
AND CURRENT_DATE BETWEEN sal.from_date AND sal.to_date
ORDER BY Department_Name;

SELECT CONCAT(emp.first_name,', ',emp.last_name) Employee_Name, dep.dept_name Department, CONCAT(man.first_name,', ',man.last_name) Manager
FROM employees emp
JOIN dept_emp depEm ON depEm.emp_no = emp.emp_no
JOIN departments dep ON dep.dept_no = depEm.dept_no
JOIN dept_manager depMan ON depMan.dept_no = dep.dept_no
JOIN employees man ON man.emp_no = depMan.emp_no
WHERE CURRENT_DATE BETWEEN depEm.from_date AND depEm.to_date
AND CURRENT_DATE BETWEEN depMan.from_date AND depMan.to_date
ORDER BY emp.first_name,emp.last_name;
