Q: Add entry into table
Sol:
-- Let's add a record to the table
INSERT INTO transactions (transaction_date, amount, fee) 
VALUES ('2018-09-24', 5454, '30');

-- Doublecheck the contents
SELECT *
FROM transactions;

Q: add an integer type cast at the right place and execute it again.
-- Calculate the net amount as amount + fee
SELECT transaction_date, amount + CAST(fee AS INTEGER) AS net_amount 
FROM transactions;

Q: Have a look at the distinct university_shortname values in the professors 
  table and take note of the length of the strings.
Sol:
-- Select the university_shortname column
SELECT DISTINCT(university_shortname) 
FROM professors;

Q: Now specify a fixed-length character type with the correct length for
  university_shortname.
Sol:
-- Specify the correct fixed-length character type
ALTER TABLE professors
ALTER COLUMN university_shortname
TYPE char(3);

Q: Change the type of the firstname column to varchar(64).
Sol:
-- Change the type of firstname
ALTER TABLE professors
ALTER COLUMN firstname
TYPE varchar(64);


Q:Now use SUBSTRING() to reduce firstname to 16 characters so its type can be altered to varchar(16).
-- Convert the values in firstname to a max. of 16 characters
ALTER TABLE professors 
ALTER COLUMN firstname 
TYPE varchar(16)
USING SUBSTRING (firstname FROM 1 FOR 16)
