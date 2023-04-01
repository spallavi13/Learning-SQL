Q: Get information on all table names in the current database, while limiting your query to the
   'public' table_schema.
Sol:
-- Query the right table in information_schema
SELECT table_name
FROM information_schema.tables
-- Specify the correct table_schema value
WHERE table_schema = 'public';

Q: Now have a look at the columns in university_professors by selecting all entries in information_schema.columns
  that correspond to that table.
 Sol:
 -- Query the right table in information_schema to get columns
SELECT column_name, data_type 
FROM information_schema.columns 
WHERE table_name = 'university_professors' AND table_schema = 'public';

Q: Finally, print the first five rows of the university_professors table.
Sol:
-- Query the first five rows of our table
SELECT * 
FROM university_professors 
LIMIT 5;

Q: Create a table professors with two text columns: firstname and lastname.
Sol:
-- Create a table for the professors entity type
CREATE TABLE professors (
 firstname text,
 lastname text
);

-- Print the contents of this table
SELECT * 
FROM professors

Q: Create a table universities with three text columns: university_shortname, university, and university_city.
Sol:
-- Create a table for the universities entity type
CREATE TABLE universities (
    university_shortname text,
    university text,
    university_city text
);

-- Print the contents of this table
SELECT * 
FROM universities
