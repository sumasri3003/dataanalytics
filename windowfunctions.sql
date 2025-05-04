use dataanalytics;
CREATE TABLE employees3 (
    employee_id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50),
    salary INT
);
 
INSERT INTO employees3 (employee_id, name, department, salary) VALUES
(1, 'Alice',   'Sales', 50000),
(2, 'Bob',     'Sales', 60000),
(3, 'Charlie', 'Sales', 45000),
(4, 'David',   'IT',    70000),
(5, 'Eva',     'IT',    80000),
(6, 'Frank',   'IT',    75000);

