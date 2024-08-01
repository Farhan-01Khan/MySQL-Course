-- where clause
SELECT *
FROM employee_salary
WHERE salary > 50000
;


SELECT *
 FROM employee_demographics
WHERE gender != 'Female' AND
birth_date > '1985-01-01';

SELECT *
FROM employee_demographics
WHERE (first_name = 'Leslie' AND age = 44) or age < 50;


--  LIKE Satment

SELECT *
 FROM employee_demographics
WHERE first_name LIKE 'an%'



