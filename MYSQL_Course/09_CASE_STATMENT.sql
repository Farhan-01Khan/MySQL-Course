-- from      
SELECT first_name,
last_name, age,
CASE 
	WHEN age <= 30 THEN 'Young'
    WHEN age BETWEEN 31 AND 50 THEN 'OLD'
END AS age_Bracket
FROM employee_demographics;


-- < 50000 = 5%
-- >50000  = 7%
-- Finance = 10%

SELECT first_name, last_name, salary,
CASE 
	WHEN salary < 50000 THEN salary + (salary * 0.05)
    WHEN salary >= 50000 THEN salary + (salary * 0.07)
END AS New_Salary,
CASE 
	WHEN dept_id = '6'THEN salary + (salary * 0.10)
End as bounces
FROM employee_salary;

SELECT *
FROM parks_departments ;