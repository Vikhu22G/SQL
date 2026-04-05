-- Refer - C:\Users\vikhy\OneDrive\Desktop\SQL\Basics\Scripts\Create_Table_1.sql
-- Table Creation
create table Users(id int auto_increment primary key, name varchar(100) not null, email varchar(100) unique not null, gender enum('Male', 'Female','Other'),date_of_birth date, created_at timestamp default current_timestamp);

-- Select
Select * from Users

-- Rename
Rename table Users to User

-- Alter
Alter Users add column is_active boolean default True;
Alter Users Drop Column is_active;
Alter Users Modify Column name Varchar(50);

-- Move a Column to First Position
Alter table users modify column email varchar(100) After id;
Alter table Users modify column date_of_birth Datetime First;

-- Insert
Insert Into <Table> Values();

-- Update
Update <Table> set name='<Value>' where <Condition>;

-- Delete
Delete from <Table> where <Condition>