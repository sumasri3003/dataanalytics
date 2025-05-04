use dataanalytics;

CREATE TABLE employeesNew (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    manager_id INT
);
 
INSERT INTO employeesNew (id, name, manager_id) VALUES
(1, 'Alice (CEO)', NULL),
(2, 'Bob (CTO)', 1),
(3, 'Charlie (CFO)', 1),
(4, 'David (Dev Manager)', 2),
(5, 'Eve (Developer)', 4),
(6, 'Frank (Intern)', 5);

