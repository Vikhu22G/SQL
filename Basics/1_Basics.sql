-- SEQUEL - Structured Query Language

-- Different Database Softwares
-- Sql Server, Oracle, DB2, MySql, PostgreSQL, Microsoft Access, Snowfalke, Amazon RDS, Maria DB, SQLite, Apache Derby, Google Cloud SQL

-- It’s a Language we use to communicate with Databases. 
-- Fundamental Database Terms
-- What is a Database -> Organized System you put your Data Into.
-- DBMS -> Used to Work with Databases. Uses SQL to talk to Databases.
-- Relational DBMS -> How to Structure and Organize your data. For Relational Data Management
-- Non-Relational DBMS -> For Non-Relational Data Management. Don’t use SQL.
-- Transactional and History Databases.
-- On Premises -> Running on Local System
-- On Cloud -> On Online Servers or VM’s
-- Database Design and Data Modelling

-- Entities (Objects) and Relations (Relations in Objects, how they are related)
-- Table – It is a Fundamental building block of a Database. Can be Viewed as Rows and Columns of Data.
-- Grid of Rows and Columns -> Rows Represent Single Entity; Column Represents Features of the Entity.
-- Every Database has Rules and Constraints to make sure data is Meaningful and DBMS enforces those, Rules.

-- Column Names and Data Types
-- It’s the type of data we can store in a Columns.
-- String, Numeric, Date and Time, Boolean, Binary (Blob – Binary Large Objects) (Can be Fixed Length or Variable Length)
-- Null Means complete absence of a Value. Non-existent Values.

-- Primary Keys -> It contain Unique Values; DBMS will not allow duplicate values in this column.
-- Automatically generate a new Value for Primary key, Incrementing a number.
-- Foreign Keys and Relationships -> One to Many Relationship
-- A foreign key is a Key of a Different Table
-- Referential Integrity – Any Relationship between tables must be valid and Accurate

-- Database Naming Conventions
-- Common Styles -> Snake Case, Camel Case, Pascal Case
/* Introduction Completed */

-- Writing SQL Queries:
-- 1) Select
-- 2) From
-- 3) All -> *
-- 4) Period of a Query ->;
-- Filtering Data with where clause.
/*
Between (It is Inclusive), In, And, Or, Not In, Like, Not Like, (Wildcard Character -> % (Multiple Characters), _ (Single Character))
SQL is Not Case-Sensitive
Collation Settings (The rules a database uses when comparing and Sorting data)
Use Case-Insensitive or Case-Sensitive Collation
SQL Regard whitespaces as Irrelevant
Using Null in a Select Statement, Equality is not good when Filtering for Nulls. Prefer Is Null or Is Not Null.

Ordering, Grouping and Aggregate Functions
1) Order By (Asc or Desc)
2) Group By (Having)
3) Aggregate Functions -> Count, Max, Min, Average, Sum
4) Distinct
*/
-- Sql is a Declarative (Just Describe Results) Language not Imperative (Full Description) or Procedural.