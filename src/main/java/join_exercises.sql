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
SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name
FROM employees as e
         JOIN dept_manager as dm
              ON dm.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01' AND e.gender = 'F';

# Find the current titles of employees currently working in the Customer Service department.
SELECT COUNT(t.title) as total, t.title as title
FROM employees as e
         JOIN dept_emp as de
              ON de.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = de.dept_no
        JOIN titles t on e.emp_no = t.emp_no
WHERE de.to_date = '9999-01-01' AND d.dept_no = 'd009'
GROUP BY title;

# Find the current salary of all current managers.
SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, s.salary as salary
FROM employees as e
         JOIN dept_manager as dm
              ON dm.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = dm.dept_no
        JOIN salaries s on e.emp_no = s.emp_no
WHERE dm.to_date = '9999-01-01' AND s.to_date = '9999-01-01';

# Bonus Find the names of all current employees, their department name, and their current manager's name .