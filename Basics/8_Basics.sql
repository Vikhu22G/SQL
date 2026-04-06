-- Joins
-- To combine rows form 2 or more tables.

1) Inner Join
2) Left Join
3) Right Join

-- Union and Union All
-- union - Combine results of 2 or more tables (Removes duplicates by default)
-- union all - Does not remove duplicates

-- Self Join - Join with same table - Useful when rows in same table are related to each other.

-- View - Snapshot of a Table at a Instance

-- Inedxes - To search faster in tables.
-- Cardinality and Collation
-- Create index <Name> on <Table>(<Column>) -- Single Index
-- Create index <Name> on <Table>(<Column>,<Column2>) -- Multi Index
-- Drop Index <Index_name> on <Table>

-- Subqueries - Query inside a Query

-- Group by and Having
-- Stored Procedures - SAVED SQL block that cab be executed later
Delimiter $$ -- To change for ; occurances in procedure
Create Procedure Select_users()
Begin
Select * from Users;
End $$
Delimiter ;

Call Select_users()

-- Triggers
-- A special kind of stored program that is executed automatically when a specific even occurs in a table;
Create trigger <name>
After Insert on <table_name>
for each row
Begin
<Statement>
End

-- Drop trigger if exists <Trigger_name>
-- Summary
-- Before/After
-- Insert/Update/Delete
-- New.Column -- Refers to new row
-- Old.Column -- Refers to old row
-- For Each Row

-- Wildcards -> % and _
-- Offset - Used with Limit (To skip Records) - Used in Pagination
-- Distinct Keyword - Returns unique values only
-- Truncate table <table_name> - Schema is there but data drops, empties the table
-- Change - rename and change datatype -> Alter table <table> change column <name> <new_name> <dt>
-- Modify - Only change datatypes

