USE hr_analytics;


SELECT Department,
ROUND(
100*SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END)/COUNT(*),
2
) AS AttritionRate
FROM employee
GROUP BY Department;


SELECT Attrition,
AVG(MonthlyIncome)
FROM employee
GROUP BY Attrition;


SELECT JobRole,
COUNT(*) AS Employees
FROM employee
WHERE Attrition='Yes'
GROUP BY JobRole;


SELECT AVG(JobSatisfaction)
FROM employee;


SELECT *
FROM employee
WHERE MonthlyIncome >
(
SELECT AVG(MonthlyIncome)
FROM employee
);


SELECT *
FROM employee
WHERE MonthlyIncome=
(
SELECT MAX(MonthlyIncome)
FROM employee
);

SELECT Department,
AVG(MonthlyIncome)
FROM employee
GROUP BY Department
ORDER BY AVG(MonthlyIncome) DESC
LIMIT 1;


SELECT Department,
AVG(Age)
FROM employee
GROUP BY Department;


SELECT AVG(YearsAtCompany)
FROM employee;


SELECT *
FROM employee
WHERE OverTime='Yes'
AND Attrition='Yes';