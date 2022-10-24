USE employees;
# Return 10 employees in a result set named 'full_name' in the format of 'last name, first name' for each employee.
SELECT CONCAT(first_name, ' ', last_name) AS full_name
FROM employees
LIMIT 10;
# Add the date of birth for each employee as 'DOB' to the query.
SELECT CONCAT(first_name, ' ', last_name, ' ', birth_date) AS full_name, 'DOB'
FROM employees
LIMIT 10;

# Update the query to format full name to include the employee number so it is formatted as 'employee number - last name, first name'.
SELECT CONCAT(emp_no, ' - ', last_name, ', ', first_name) AS full_name
FROM employees
LIMIT 10;


# The final result should look like this:


