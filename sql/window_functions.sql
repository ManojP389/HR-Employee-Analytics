USE hr_analytics;


SELECT
EmployeeNumber,
Department,
MonthlyIncome,
RANK() OVER(
ORDER BY MonthlyIncome DESC
) SalaryRank
FROM employee;


SELECT
EmployeeNumber,
Department,
MonthlyIncome,
RANK() OVER(
PARTITION BY Department
ORDER BY MonthlyIncome DESC
) SalaryRank
FROM employee;


SELECT
EmployeeNumber,
MonthlyIncome,
DENSE_RANK() OVER(
ORDER BY MonthlyIncome DESC
)
FROM employee;

SELECT
EmployeeNumber,
ROW_NUMBER() OVER(
ORDER BY MonthlyIncome DESC
)
FROM employee;


SELECT
EmployeeNumber,
MonthlyIncome,
SUM(MonthlyIncome)
OVER(
ORDER BY EmployeeNumber
)
FROM employee;


SELECT
EmployeeNumber,
MonthlyIncome,
LAG(MonthlyIncome)
OVER(
ORDER BY MonthlyIncome
)
FROM employee;


SELECT
EmployeeNumber,
MonthlyIncome,
LEAD(MonthlyIncome)
OVER(
ORDER BY MonthlyIncome
)
FROM employee;


SELECT
Department,
MonthlyIncome,
AVG(MonthlyIncome)
OVER(
PARTITION BY Department
)
FROM employee;

SELECT
EmployeeNumber,
MonthlyIncome,
NTILE(4)
OVER(
ORDER BY MonthlyIncome
)
FROM employee;


SELECT
EmployeeNumber,
MonthlyIncome,
AVG(MonthlyIncome)
OVER(
ORDER BY EmployeeNumber
)
FROM employee;