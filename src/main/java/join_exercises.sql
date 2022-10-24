USE employees;

# Using the example in the Associative Table Joins section as a guide,
#   write a query that shows each department
#   along with the name of the current manager for that department.
SELECT * FROM dept_manager;
SELECT * FROM departments;




SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name
FROM employees as e
         JOIN dept_manager as dm
              ON dm.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01';


# Find the name of all departments currently managed by women.

# Find the current titles of employees currently working in the Customer Service department.

# Find the current salary of all current managers.


# Bonus Find the names of all current employees, their department name, and their current manager's name .