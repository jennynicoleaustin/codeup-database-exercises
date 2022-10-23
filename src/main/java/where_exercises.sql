-- Make sure to use the employees database before you begin.
USE employees;

-- Find all employees with first names 'Irena', 'Vidya', or 'Maya' — 709 rows (Hint: Use IN).
SELECT DISTINCT first_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya');

-- Find all employees whose last name starts with 'E' — 7,330 rows.
SELECT DISTINCT last_name
FROM employees
WHERE last_name REGEXP '^E.*$';

-- Find all employees with a 'q' in their last name — 1,873 rows.
SELECT DISTINCT last_name
FROM employees
WHERE last_name LIKE '%q%';
