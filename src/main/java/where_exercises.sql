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

# Update your query for 'Irena', 'Vidya', or 'Maya' to use OR instead of IN — 709 rows.
SELECT DISTINCT first_name
FROM employees
WHERE first_name = 'Irena' || 'Vidya' || 'Maya';

# Add a condition to the previous query to find everybody with those names who is also male — 441 rows.
SELECT first_name, gender
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya') AND gender = 'M';

# Find all employees whose last name starts or ends with 'E' — 30,723 rows.
SELECT DISTINCT last_name
FROM employees
WHERE last_name REGEXP '^E.*$'
   OR last_name REGEXP 'e$';


# Duplicate the previous query and update it to find all employees whose last name starts and ends with 'E' — 899 rows.
SELECT DISTINCT last_name
FROM employees
WHERE last_name REGEXP '^E.*$'
  AND last_name REGEXP 'e$';

# Find all employees with a 'q' in their last name but not 'qu' — 547 rows.
SELECT DISTINCT last_name
FROM employees
WHERE last_name LIKE '%q%'
  AND last_name NOT LIKE '%qu%'
