-- Fundamentals for SQL Joins
-- Using same join for a table - self join
-- Example Database: Employees  
SELECT 
    e1.EmployeeID AS EmployeeID,
    e1.FirstName AS EmployeeFirstName,
    e1.LastName AS EmployeeLastName,
    e2.EmployeeID AS ManagerID,
    e2.FirstName AS ManagerFirstName,
    e2.LastName AS ManagerLastName
FROM 
    Employees e1
LEFT JOIN 
    Employees e2 ON e1.ManagerID = e2.EmployeeID;   
-- In this example, we are joining the Employees table with itself to get each employee's manager details.
-- Group_Concat Function to aggregate data from multiple rows into a single string
-- Example Database: Orders and OrderDetails
SELECT 
    o.OrderID,
    GROUP_CONCAT(od.ProductName SEPARATOR ', ') AS ProductsOrdered
FROM 
    Orders o
JOIN 
    OrderDetails od ON o.OrderID = od.OrderID
GROUP BY 
    o.OrderID;
-- Here, we are using GROUP_CONCAT to list all products ordered in each order as a single string.
-- Coalesce Function to handle NULL values
-- Example Database: Customers
SELECT 
    CustomerID,
    COALESCE(PhoneNumber, 'No Phone Number Provided') AS ContactNumber
FROM 
    Customers;
-- In this example, COALESCE is used to replace NULL phone numbers with a default message.


-- Cross Join to get Cartesian Product of two tables
-- Example Database: Products and Categories
SELECT 
    p.ProductName,
    c.CategoryName
FROM 
    Products p
CROSS JOIN 
    Categories c;
-- This query returns all possible combinations of products and categories.
-- Using EXISTS to check for the existence of related records
-- Example Database: Customers and Orders
SELECT 
    c.CustomerID,
    c.CustomerName
FROM 
    Customers c
WHERE 
    EXISTS (SELECT 1 FROM Orders o WHERE o.CustomerID = c.CustomerID);
-- This query retrieves customers who have placed at least one order.

-- Full outer join to get all records from both tables
-- We use a UNION of LEFT JOIN and RIGHT JOIN to achieve this since FULL OUTER JOIN is not supported in all databases
-- Example Database: Employees and Departments
SELECT 
    e.EmployeeID,
    e.FirstName,            
    e.LastName,
    d.DepartmentName
FROM 
    Employees e
LEFT JOIN 
    Departments d ON e.DepartmentID = d.DepartmentID
UNION
SELECT 
    e.EmployeeID,
    e.FirstName,        
    e.LastName,
    d.DepartmentName
FROM 
    Employees e
RIGHT JOIN 
    Departments d ON e.DepartmentID = d.DepartmentID;
-- This query retrieves all employees and their department names, including those without a department and all departments

Clause - Using Clause to filter results based on conditions
-- Example Database: Orders and Customers
SELECT 
    o.OrderID,
    c.CustomerName
FROM    
    Orders o
JOIN       Customers c USING (CustomerID)
WHERE 
    o.OrderDate > '2024-01-01';
-- This query retrieves orders placed after January 1, 2024, along with the customer names, using the USING clause to join on CustomerID.
-- It wont work if the column names are different in both tables. In that case we need to use ON clause instead of USING clause.

