-- window ftn 

SELECT gender, AVG(salary) as avg_sal
FROM employee_demographics as dem
JOIN employee_salary as sal
	ON dem.employee_id = sal.employee_id
GROUP BY  gender;



SELECT gender,  AVG(salary) OVER(PARTITION BY gender)
FROM employee_demographics as dem
JOIN employee_salary as sal
	ON dem.employee_id = sal.employee_id;
    
    
    

SELECT gender, dem.first_name, dem.last_name, salary,
SUM(salary) OVER(PARTITION BY gender ORDER BY dem.employee_id) as rolling_total
FROM employee_demographics as dem
JOIN employee_salary as sal
	ON dem.employee_id = sal.employee_id;
    
SELECT gender, dem.first_name, dem.last_name, salary, dem.employee_id,
ROW_NUMBER() OVER(PARTITION BY gender order by salary ASC) AS R_NUM,
RANK() OVER(PARTITION BY gender order by salary ASC) AS RANK_NUM,--  
DENSE_RANK() OVER(PARTITION BY gender order by salary ASC) AS DENS_RANK_NUM
FROM employee_demographics as dem
JOIN employee_salary as sal
	ON dem.employee_id = sal.employee_id;




