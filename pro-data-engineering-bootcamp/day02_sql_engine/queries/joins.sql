DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS employees;

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50)
);

CREATE TABLE salaries (
    emp_id INT,
    salary INT,
    FOREIGN KEY (emp_id) REFERENCES employees(emp_id)
);

INSERT INTO employees (emp_id, name) VALUES
(1, 'Nitin'),
(2, 'Akash'),
(3, 'Riya'),
(4, 'Priya');

INSERT INTO employees (emp_id, name) VALUES (5, 'Dummy');

INSERT INTO salaries (emp_id, salary) VALUES
(1, 80000),
(2, 90000),
(5, 75000);

-- INNER JOIN
SELECT a.name, b.salary
FROM employees a
INNER JOIN salaries b ON a.emp_id = b.emp_id;

-- LEFT JOIN
SELECT a.name, b.salary
FROM employees a
LEFT JOIN salaries b ON a.emp_id = b.emp_id;

-- RIGHT JOIN
SELECT a.name, b.salary
FROM employees a
RIGHT JOIN salaries b ON a.emp_id = b.emp_id;

-- FULL OUTER JOIN
SELECT a.name, b.salary
FROM employees a
FULL OUTER JOIN salaries b ON a.emp_id = b.emp_id;
