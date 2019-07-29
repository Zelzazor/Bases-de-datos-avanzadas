SELECT COUNT(DISTINCT manager_id) AS "Number of Managers" FROM employees;


SELECT * FROM employees;

SELECT DISTINCT manager_ID, MIN(salary) FROM employees 
HAVING manager_id IS NOT NULL AND MIN(salary) > 6000 GROUP BY manager_ID  ORDER BY MIN(salary) DESC;

SELECT * FROM countries;
SELECT * FROM locations;

SELECT location_id, street_address, city, state_province, country_name FROM locations NATURAL JOIN countries;

SELECT * FROM employees WHERE job_id LIKE '%MAN';

SELECT * FROM departments;
SELECT * FROM employees;

SELECT last_name, department_id, department_name FROM employees
JOIN departments USING(department_id);  

SELECT e.last_name, e.job_id, e.department_id, d.department_name
FROM employees e 
JOIN departments d ON e.department_id=d.department_id 
JOIN locations l ON d.location_id=l.location_id 
WHERE l.city = 'Toronto';

SELECT e.last_name AS "Employee", e.employee_id AS "Emp#", 
m.last_name AS "Manager", e.manager_id AS "Mgr#"
FROM employees e 
LEFT OUTER JOIN employees m ON m.employee_id = e.manager_id
ORDER BY e.employee_id;

SELECT e.last_name, e.job_id, d.department_name, e.salary, j.grade_level
FROM employees e 
JOIN job_grades j ON e.salary BETWEEN j.lowest_sal AND j.highest_sal
LEFT OUTER JOIN departments d ON e.department_id = d.department_id;

SELECT e.first_name, e.hire_date 
FROM employees e 
JOIN employees da ON (da.last_name='Davies' AND da.hire_Date < e.hire_date)
ORDER BY hire_date;

SELECT * FROM employees WHERE last_name = 'Davies';

