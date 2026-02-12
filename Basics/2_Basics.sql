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
