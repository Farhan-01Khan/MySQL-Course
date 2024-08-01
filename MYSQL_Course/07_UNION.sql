-- UNION

SELECT *
FROM employee_demographics
UNION ALL
SELECT *
FROM employee_salary;


SELECT first_name, last_name, 'OLD Man' as label
FROM employee_demographics
WHERE age > 40 AND gender = 'Male'
UNION 
SELECT first_name, last_name, 'OLD Lady' as label
FROM employee_demographics
WHERE age > 40 AND gender = 'Female'
UNION
SELECT first_name, last_name, 'HIGH Paid' as label
FROM employee_salary
WHERE salary > 70000
ORDER BY first_name,last_name
