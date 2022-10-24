# USE your employees database.
USE employees;

# DESCRIBE each table and inspect the keys and see which columns have indexes and keys.
SHOW TABLES;
DESCRIBE current_dept_emp;
DESCRIBE departments;
DESCRIBE dept_emp;
DESCRIBE dept_emp_latest_date;
DESCRIBE dept_manager;
DESCRIBE employees;
DESCRIBE salaries;
DESCRIBE titles;
# USE your codeup_test_db database.
USE codeup_test_db;
# Add an index to make sure all album names combined with the artist are unique. Try to add duplicates to test the constraint.
SHOW TABLES;
DESCRIBE albums;
ALTER TABLE albums
ADD UNIQUE combined_index (name, artist);
# # Verify you cannot add a duplicate for name and artist combo
# INSERT INTO albums (artist, name, release_date, sales, genre)
#        VALUES ('Michael Jackson', 'Thriller', 1882, 41.3, 'Pop, R&B');
DESCRIBE  albums;
# The MUL will only show on one of the columns, not both/all.