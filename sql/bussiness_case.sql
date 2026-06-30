USE hr_analytics;

SELECT Department,
ROUND(
100*SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END)/COUNT(*),
2
) AttritionRate
FROM employee
GROUP BY Department
ORDER BY AttritionRate DESC;


SELECT JobRole,
AVG(MonthlyIncome)
FROM employee
GROUP BY JobRole
ORDER BY AVG(MonthlyIncome) DESC;


SELECT EmployeeNumber,
TotalWorkingYears
FROM employee
ORDER BY TotalWorkingYears DESC
LIMIT 10;


SELECT *
FROM employee
WHERE WorkLifeBalance=1;


SELECT Education,
AVG(MonthlyIncome)
FROM employee
GROUP BY Education;


SELECT OverTime,
Attrition,
COUNT(*)
FROM employee
GROUP BY OverTime,Attrition;


SELECT Gender,
AVG(MonthlyIncome)
FROM employee
GROUP BY Gender;


SELECT *
FROM employee
WHERE YearsSinceLastPromotion<=1;

SELECT *
FROM employee
WHERE TotalWorkingYears>20;


SELECT
COUNT(*) TotalEmployees,
AVG(MonthlyIncome) AvgSalary,
AVG(Age) AvgAge,
SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END) AttritionEmployees
FROM employee;

desc employee;

ALTER TABLE employee
RENAME COLUMN `ï»¿Age` TO Age;