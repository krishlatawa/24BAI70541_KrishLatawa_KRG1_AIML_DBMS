CREATE TABLE employee (
    emp_id NUMERIC,
    emp_name VARCHAR(50),
    department VARCHAR(50),
    salary NUMERIC,
    joining_date DATE
);

INSERT INTO employee VALUES
(1, 'Amit', 'IT', 45000, '2022-01-10'),
(2, 'Neha', 'HR', 28000, '2021-05-12'),
(3, 'Rohit', 'IT', 65000, '2020-03-18'),
(4, 'Pooja', 'Finance', 35000, '2019-07-25'),
(5, 'Karan', 'HR', 22000, '2023-02-14'),
(6, 'Sneha', 'Finance', 18000, '2021-11-30');


SELECT 
    department,
    AVG(salary) AS avg_salary
FROM 
    employee
WHERE 
    salary > 20000
GROUP BY 
    department
HAVING 
    AVG(salary) > 30000
ORDER BY 
    avg_salary DESC;
