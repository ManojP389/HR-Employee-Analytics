
use hr_analytics;

-- 1. View all employees
SELECT * FROM employee;

alter table employee
rename column Age to age;

desc employee;

ALTER TABLE your_table_name
CHANGE COLUMN `ï»¿Age` Age INT;

SELECT * FROM employee LIMIT 10;


SELECT COUNT(*) AS TotalEmployees
FROM employee;

SELECT DISTINCT Department
FROM employee;


SELECT DISTINCT JobRole
FROM employee;


SELECT *
FROM employee
WHERE Age > 40;


SELECT *
FROM employee
WHERE MonthlyIncome > 10000;


SELECT *
FROM employee
WHERE OverTime='Yes';


SELECT *
FROM employee
WHERE Gender='Female';

SELECT *
FROM employee
WHERE MaritalStatus='Married';


SELECT EmployeeNumber,MonthlyIncome
FROM employee
ORDER BY MonthlyIncome DESC;


SELECT EmployeeNumber,Age
FROM employee
ORDER BY Age;


SELECT EmployeeNumber,MonthlyIncome
FROM employee
ORDER BY MonthlyIncome DESC
LIMIT 5;


SELECT *
FROM employee
WHERE Age BETWEEN 25 AND 35;

SELECT *
FROM employee
WHERE Department='Sales';