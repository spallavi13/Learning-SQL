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

Q: Alter professors to add the text column university_shortname.
Sol:
-- Add the university_shortname column
ALTER TABLE professors
ADD COLUMN university_shortname text;

-- Print the contents of this table
SELECT * 
FROM professors

Q: Rename the organisation column to organization in affiliations.
Q: Delete the university_shortname column in affiliations.
Sol:
-- Rename the organisation column
ALTER TABLE affiliations
RENAME COLUMN organisation TO organization;

-- Delete the university_shortname column
ALTER TABLE affiliations
DROP COLUMN university_shortname;

Q: Insert all DISTINCT professors from university_professors into professors.
Q: Print all the rows in professors.
Sol:
-- Insert unique professors into the new table
INSERT INTO professors 
SELECT DISTINCT firstname, lastname, university_shortname 
FROM university_professors;

-- Doublecheck the contents of professors
SELECT * 
FROM professors;

Q: Insert all DISTINCT affiliations into affiliations from university_professors.
Sol:
-- Insert unique affiliations into the new table
INSERT INTO affiliations 
SELECT DISTINCT firstname, lastname, function, organization 
FROM university_professors;

-- Doublecheck the contents of affiliations
SELECT * 
FROM affiliations;

Q: Delete the university_professors table.
Sol:
-- Delete the university_professors table
DROP TABLE university_professors;
