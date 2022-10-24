# USE your employees database.
USE employees;

# DESCRIBE each table and inspect the keys and see which columns have indexes and keys.
SHOW TABLES;
SHOW INDEX from current_dept_emp;
SHOW INDEX from departments;
SHOW INDEX from dept_emp;
SHOW INDEX from dept_emp_latest_date;
SHOW INDEX from dept_manager;
SHOW INDEX from employees;
SHOW INDEX from salaries;
SHOW INDEX from titles;
# USE your codeup_test_db database.
USE codeup_test_db;
# Add an index to make sure all album names combined with the artist are unique. Try to add duplicates to test the constraint.
SHOW TABLES;
DESCRIBE albums;
ALTER TABLE albums
ADD UNIQUE combine_index (name, artist);

# # Verify you cannot add a duplicate for name and artist combo

# This gives an error "cannot add duplicate entry"

# INSERT INTO albums (artist, name, release_date, sales, genre)
#        VALUES ('Michael Jackson', 'Thriller', 1882, 41.3, 'Pop, R&B');

# While this is able to add, no error
INSERT INTO albums (artist, name, release_date, sales, genre)
VALUES ('Michaelllllllllllllll Jackson', 'Thriller', 1882, 41.3, 'Pop, R&B');
DESCRIBE  albums;
SELECT artist, name FROM albums;
# SHOW INDEX will show the columns with indexes
SHOW INDEX from albums;
