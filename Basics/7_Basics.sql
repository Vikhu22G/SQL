-- Auto Commits and Transactions, Evert Sql Statement is a Transaction to Database
Set Autocommit = 0 -- Setting Off/Disabling it
Commit -- Need to Manually Commit, SAVE changes to database.
Rollback -- To go to previous commits if commit not done, Revert Chnages to last safe point.

-- Drop Primary Key
Alter table <Table> drop Primary Key

-- Drop a Unique Constraint
Alter table <Table> drop Index <Index>

-- Auto Increment Starts with 1, we can change the starting value.
Alter Table <Table> auto_increment=1000 -- To start with 1000

-- Foreign Keys
Constraint <Name> Foreign Key(<COL>) References <Table>(<Col>), On delete Cascade, On delete Set Null, On delete Update, On Delete Restrict (Prevent deletion of the Parent if Child Exists)

-- To view indexes and constraints
Show index form <Table>
