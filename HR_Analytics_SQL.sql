-- HR Analytics SQL Project

-- Total Employees
SELECT COUNT(*) AS total_employees
FROM employees;

-- Employees Left
SELECT COUNT(*) AS employees_left
FROM employees
WHERE col_7 = 1;

-- Attrition by Department
SELECT
    department,
    SUM(col_7) AS employees_left
FROM employees
GROUP BY department
ORDER BY employees_left DESC;

-- Attrition by Salary
SELECT
    salary,
    SUM(col_7) AS employees_left
FROM employees
GROUP BY salary
ORDER BY employees_left DESC;

-- Average Satisfaction
SELECT
    ROUND(AVG(satisfaction_level),2) AS avg_satisfaction
FROM employees;

-- Satisfaction vs Attrition
SELECT
    satisfaction_group,
    COUNT(*) AS employees,
    SUM(col_7) AS employees_left
FROM employees
GROUP BY satisfaction_group;

-- Promotion Impact
SELECT
    promotion_status,
    COUNT(*) AS total_employees,
    SUM(col_7) AS employees_left
FROM employees
GROUP BY promotion_status;

-- Department Workload
SELECT
    department,
    ROUND(AVG(average_monthly_hours),2) AS avg_hours
FROM employees
GROUP BY department
ORDER BY avg_hours DESC;

-- Tenure Analysis
SELECT
    time_spend_company,
    SUM(col_7) AS employees_left
FROM employees
GROUP BY time_spend_company
ORDER BY time_spend_company;

-- Work Accident Analysis
SELECT
    accident_status,
    COUNT(*) AS employees,
    SUM(col_7) AS employees_left
FROM employees
GROUP BY accident_status;