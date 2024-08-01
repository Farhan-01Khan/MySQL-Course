-- CTE STAND FOR --> COMMON TABLE EXPRESSION 


 WITH CTE_Example AS (
SELECT gender, AVG(salary) as avg_sal, MAX(salary) as max_sal, MIN(salary) as min_sal, COUNT(salary) as count_sal
FROM employee_demographics AS dem
JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
GROUP BY gender)

SELECT AVG(avg_sal)
FROM CTE_Example;
-- CTE LOOK BETTER THAN THE SUBQUERY IN MANY WAY. EG; PROFESSINALY, ESAY TO UNDERSTAN, & TIME  EFFICENT



SELECT AVG(avg_sal)
FROM
(SELECT gender, AVG(salary) as avg_sal, MAX(salary) as max_sal, MIN(salary) as min_sal, COUNT(salary) as count_sal
FROM employee_demographics AS dem
JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
GROUP BY gender) example_subquery;

WITH CTE_Example AS (
SELECT employee_id,gender,birth_date
FROM employee_demographics
WHERE birth_date > '1985-01-01'
),
CTE_Example2 AS (
SELECT employee_id,salary
FROM employee_salary
WHERE salary > 50000
)
select * 
FROM CTE_Example 
JOIN CTE_Example2
		ON CTE_Example.employee_id = CTE_Example2.employee_id;






