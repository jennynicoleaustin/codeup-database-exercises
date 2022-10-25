USE employees;
# From our employees database, we can use this example query to find all the department managers names and birth dates:
SELECT first_name, last_name, birth_date
FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM dept_manager
)
LIMIT 10;

# Find all the employees with the same hire date as employee 101010 using a subquery.
SELECT hire_date, last_name
FROM employees
WHERE hire_date IN (
    SELECT hire_date from employees WHERE emp_no = '101010'
);

# Find all the titles held by all employees with the first name Aamod.
SELECT title
FROM titles
WHERE emp_no IN (
    SELECT emp_no from employees WHERE first_name = 'Aamod'
    );

# Find all the current department managers that are female.
SELECT first_name, last_name
FROM employees
WHERE emp_no IN (
    SELECT emp_no from dept_manager WHERE employees.gender = 'F'
        AND dept_manager.to_date = '9999-01-01'
    );

# BONUS
# Find all the department names that currently have female managers.
SELECT dept_name
FROM departments
WHERE dept_no IN (
    SELECT dept_no from dept_manager WHERE emp_no IN (
        SELECT emp_no from employees
        WHERE employees.gender = 'F' AND dept_manager.to_date = '9999-01-01'
        )
    );

# Find the first and last name of the employee with the highest salary.
SELECT first_name, last_name
FROM employees
WHERE emp_no IN (
    SELECT emp_no from salaries WHERE salary IN (
        SELECT MAX(salary) FROM salaries
        )
    );

# Complete all the exercises