USE hr_analytics;

SELECT COUNT(*) FROM employee;

SELECT AVG(MonthlyIncome)
FROM employee;


SELECT MAX(MonthlyIncome)
FROM employee;


SELECT MIN(MonthlyIncome)
FROM employee;


SELECT SUM(MonthlyIncome)
FROM employee;


SELECT Department,
COUNT(*)
FROM employee
GROUP BY Department;


SELECT Department,
AVG(MonthlyIncome)
FROM employee
GROUP BY Department;


SELECT Department,
MAX(MonthlyIncome)
FROM employee
GROUP BY Department;


SELECT JobRole,
AVG(MonthlyIncome)
FROM employee
GROUP BY JobRole;


SELECT Gender,
COUNT(*)
FROM employee
GROUP BY Gender;

SELECT Attrition,
COUNT(*)
FROM employee
GROUP BY Attrition;


SELECT
Attrition,
ROUND(COUNT(*)*100/(SELECT COUNT(*) FROM employee),2)
FROM employee
GROUP BY Attrition;


SELECT OverTime,
COUNT(*)
FROM employee
GROUP BY OverTime;


SELECT AVG(TotalWorkingYears)
FROM employee;

SELECT Department,
COUNT(*)
FROM employee
GROUP BY Department
HAVING COUNT(*)>100;