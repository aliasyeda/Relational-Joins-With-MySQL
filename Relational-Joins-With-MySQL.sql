CREATE DATABASE joins_practice;
USE joins_practice;

USE joins_practice;

CREATE TABLE departments (
  dept_id INT PRIMARY KEY,
  dept_name VARCHAR(50)
);

CREATE TABLE employees (
  emp_id INT PRIMARY KEY,
  emp_name VARCHAR(50),
  dept_id INT
);

INSERT INTO departments VALUES
(1, 'HR'),
(2, 'Finance'),
(3, 'IT'),
(4, 'Sales');


INSERT INTO employees VALUES
(101, 'Alice', 1),
(102, 'Bob', 2),
(103, 'Charlie', 3),
(104, 'David', NULL),
(105, 'Eva', 5);  

SELECT e.emp_name, d.dept_name
FROM employees e
INNER JOIN departments d ON e.dept_id = d.dept_id;


SELECT e.emp_name, d.dept_name
FROM employees e
LEFT JOIN departments d ON e.dept_id = d.dept_id;


SELECT e.emp_name, d.dept_name
FROM employees e
RIGHT JOIN departments d ON e.dept_id = d.dept_id;

SELECT e.emp_name, d.dept_name
FROM employees e
LEFT JOIN departments d ON e.dept_id = d.dept_id

UNION

SELECT e.emp_name, d.dept_name
FROM employees e
RIGHT JOIN departments d ON e.dept_id = d.dept_id;






