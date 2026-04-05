-- Auto Commits and Transactions, Evert Sql Statement is a Transaction to Database
Set Autocommit = 0 -- Setting Off/Disabling it
Commit -- Need to Manually Commit, SAVE changes to database.
Rollback -- To go to previous commits if commit not done, Revert Chnages to last safe point.
