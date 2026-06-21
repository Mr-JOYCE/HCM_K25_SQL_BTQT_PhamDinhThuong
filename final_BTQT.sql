-- Câu 1
SELECT employee_id AS "Employee ID",
       full_name AS "Employee Name",
       salary AS "Monthly Salary"
FROM employees;

-- Câu 2
SELECT full_name,
       salary * 12 AS "Annual Salary"
FROM employees;

-- Câu 3
SELECT full_name AS "Name",
       hire_date AS "Start Date"
FROM employees;

-- Câu 4
SELECT COUNT(*) AS total_employee
FROM employees;

-- Câu 5
SELECT SUM(salary) AS total_salary
FROM employees;

-- Câu 6
SELECT AVG(salary) AS average_salary
FROM employees;

-- Câu 7
SELECT MAX(salary) AS highest_salary
FROM employees;

-- Câu 8
SELECT MIN(salary) AS lowest_salary
FROM employees;

-- Câu 9
SELECT COUNT(*) AS total_employee,
       SUM(salary) AS total_salary,
       AVG(salary) AS average_salary,
       MAX(salary) AS highest_salary,
       MIN(salary) AS lowest_salary
FROM employees;

-- Câu 10
SELECT department_id,
       COUNT(*) AS total_employee
FROM employees
GROUP BY department_id;

-- Câu 11
SELECT department_id,
       SUM(salary) AS total_salary
FROM employees
GROUP BY department_id;

-- Câu 12
SELECT department_id,
       AVG(salary) AS average_salary
FROM employees
GROUP BY department_id;

-- Câu 13
SELECT department_id,
       MAX(salary) AS highest_salary
FROM employees
GROUP BY department_id;

-- Câu 14
SELECT department_id,
       MIN(salary) AS lowest_salary
FROM employees
GROUP BY department_id;

-- Câu 15
SELECT department_id,
       COUNT(*) AS total_employee
FROM employees
GROUP BY department_id
HAVING COUNT(*) >= 3;

-- Câu 16
SELECT department_id,
       SUM(salary) AS total_salary
FROM employees
GROUP BY department_id
HAVING SUM(salary) > 35000000;

-- Câu 17
SELECT department_id,
       AVG(salary) AS average_salary
FROM employees
GROUP BY department_id
HAVING AVG(salary) > 14000000;

-- Câu 18
SELECT department_id,
       COUNT(*) AS total_employee,
       SUM(salary) AS total_salary
FROM employees
GROUP BY department_id
HAVING COUNT(*) > 2
   AND SUM(salary) > 30000000;

-- Câu 19
SELECT *
FROM employees
WHERE salary = (
    SELECT MAX(salary)
    FROM employees
);

-- Câu 20
SELECT *
FROM employees
WHERE salary = (
    SELECT MIN(salary)
    FROM employees
);

-- Câu 21
SELECT *
FROM employees
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
);

-- Câu 22
SELECT *
FROM employees
WHERE salary < (
    SELECT AVG(salary)
    FROM employees
);

-- Câu 23
SELECT *
FROM employees
WHERE department_id = (
    SELECT department_id
    FROM employees
    WHERE full_name = 'Nguyen Van An'
);

-- Câu 24
SELECT *
FROM employees
WHERE salary = (
    SELECT MAX(salary)
    FROM employees
);

-- Câu 25
SELECT e.full_name,
       d.department_name
FROM employees e
JOIN departments d
ON e.department_id = d.department_id;

-- Câu 26
SELECT e.full_name,
       e.gender,
       d.department_name
FROM employees e
JOIN departments d
ON e.department_id = d.department_id;

-- Câu 27
SELECT e.full_name,
       e.salary,
       d.department_name
FROM employees e
JOIN departments d
ON e.department_id = d.department_id
ORDER BY e.salary DESC;

-- Câu 28
SELECT d.department_name,
       COUNT(*) AS total_employee
FROM employees e
JOIN departments d
ON e.department_id = d.department_id
GROUP BY d.department_name;

-- Câu 29
SELECT e.*
FROM employees e
WHERE e.salary = (
    SELECT MAX(salary)
    FROM employees
    WHERE department_id = e.department_id
);

-- Câu 30
SELECT department_id,
       AVG(salary) AS average_salary
FROM employees
GROUP BY department_id
HAVING AVG(salary) > (
    SELECT AVG(salary)
    FROM employees
);