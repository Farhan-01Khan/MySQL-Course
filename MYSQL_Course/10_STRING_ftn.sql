-- string Function

SELECT LENGTH('farhan');

SELECT first_name, LENGTH(first_name)
FROM employee_demographics
ORDER BY LENGTH(first_name) ASC;

SELECT UPPER('sky');
SELECT LOWER('SKY');


SELECT first_name, UPPER(first_name)
FROM employee_demographics;



SELECT RTRIM('                     SKY         ');


SELECT first_name,birth_date,
-- LEFT(first_name, 5),
-- RIGHT(first_name, 5),
SUBSTRING(birth_date, 6,2) as birth_month
FROM employee_demographics;

SELECT first_name, REPLACE(first_name,'a','z')
FROM employee_demographics;

SELECT LOCATE( 'x','Alexander');

SELECT first_name,first_name,
CONCAT(first_name,' ',last_name) as full_name
FROM employee_demographics;


SELECT salary, AVG(salary)
fROM employee_salary
GROUP BY gender;



