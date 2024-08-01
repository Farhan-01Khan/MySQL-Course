SELECT *
FROM employee_demographics;

SELECT * 
FROM employee_salary;

SELECT * 
FROM employee_salary AS SAL
INNER JOIN employee_demographics AS DEM
 ON DEM.employee_id =SAL.employee_id;
 
 
 
 -- outer JOIN RIGHT JOIN also show the null row in output
SELECT * 
FROM employee_demographics AS dem
RIGHT JOIN employee_salary AS sal
ON dem.employee_id = sal.employee_id;


 -- outer JOIN LEFT JOIN also  not show the nnull row in output
SELECT * 
FROM employee_demographics AS dem
LEFT JOIN employee_salary AS sal
ON dem.employee_id = sal.employee_id;



-- SELF JOINE



SELECT emp1.employee_id as emp_santa,
emp1.first_name AS first_name_santa,
emp1.last_name AS last_name_santa,
emp2.employee_id as emp_santa,
emp2.first_name AS first_name_santa,
emp2.last_name AS last_name_santa
FROM employee_salary emp1
JOIN employee_salary  emp2
	ON emp1.employee_id+1 = emp2.employee_id
 ;
 