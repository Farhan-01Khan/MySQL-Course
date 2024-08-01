-- TEMPORARY TABLE

CREATE TEMPORARY  TABLE temp_table(
first_name VARCHAR(50),
last_name VARCHAR(50),
favorite_moive VARCHAR(100)

);

SELECT *
FROM temp_table;


INSERT INTO temp_table
VALUES('Alex', 'freberg','lord of war');

SELECT *
FROM temp_table;



CREATE TEMPORARY TABLE salary_over_50k
SELECT *
FROM employee_salary
WHERE salary >= 50000;



SELECT *
FROM  salary_over_50k;





