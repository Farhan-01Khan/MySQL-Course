SELECT * 
FROM employee_salary
ORDER BY age DESC
LIMIT 3, 1 ;

SELECT gender, AVG(age) AS avg_age
FROM employee_demographics
GROUP BY gender
HAVING avg_age  > 40;

SELECT dept_id, first_name, occupation
FROM employee_salary
GROUP BY dept_id, first_name, occupation
order by dept_id,first_name ASC
limit 3;

