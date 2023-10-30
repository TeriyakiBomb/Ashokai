-- Create a table
CREATE TABLE employees (
  id INT PRIMARY KEY,
  name VARCHAR(50),
  age INT,
  department VARCHAR(50)
);

-- Insert data into the table
INSERT INTO employees (id, name, age, department)
VALUES (1, 'John Doe', 30, 'IT'),
       (2, 'Jane Smith', 35, 'HR'),
       (3, 'Mark Johnson', 28, 'Finance');

-- Retrieve data from the table
SELECT * FROM employees;

-- Update data in the table
UPDATE employees
SET age = 31
WHERE id = 1;

-- Delete data from the table
DELETE FROM employees
WHERE id = 3;

-- Create a view
CREATE VIEW employees_view AS
SELECT id, name, department
FROM employees
WHERE age > 30;

-- Query the view
SELECT * FROM employees_view;

-- Create a stored procedure
DELIMITER //
CREATE PROCEDURE get_employee(IN employee_id INT)
BEGIN
  SELECT * FROM employees WHERE id = employee_id;
END //
DELIMITER ;

-- Call the stored procedure
CALL get_employee(2);

-- Create a trigger
CREATE TRIGGER update_age
AFTER UPDATE ON employees
FOR EACH ROW
BEGIN
  INSERT INTO audit_log (employee_id, action, timestamp)
  VALUES (OLD.id, 'update', NOW());
END;

-- Create an index
CREATE INDEX idx_department ON employees (department);

-- Create a foreign key constraint
ALTER TABLE employees
ADD CONSTRAINT fk_department
FOREIGN KEY (department)
REFERENCES departments (id);