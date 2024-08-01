-- subquries 

SELECT *
FROM employee_demographics
WHERE employee_id IN 
					(SELECT employee_id
						FROM employee_salary
                        WHERE dept_id = 1);
                        
  
  
SELECT first_name, salary,
(SELECT AVG(salary)
FROM employee_salary)
FROM employee_salary;

SELECT *
FROM employee_demographics;




SELECT AVG(max_age)
FROM
(SELECT gender, 
AVG(age) as avg_age,
MAX(age) as max_age,
MIN(age) as min_age,
COUNT(age)
FROM employee_demographics
GROUP BY gender) as agg_table;
                        
                        
           
           
           
-- Paractics
SELECT first_name, last_name, employee_id
FROM employee_demographics as dem
WHERE first_name IN		
					(SELECT first_name 
                    FROM employee_salary as sal
                    where dem.first_name = sal.first_name);