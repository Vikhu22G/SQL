-- Advanced Joins
-- Advanced Subqueries and Set Operations

-- 2 Types of Subqueries:
-- 1) Correlated Subqueries -> It is a Subquery that references a column from the outer query. It is executed once for each row processed by the outer query.
-- 2) Non-Correlated Subqueries -> It is a Subquery that does not reference any column from the outer query.
-- It is executed once and its result is used by the outer query.
-- Example of Correlated Subquery:
SELECT 
    e.EmployeeID,
    e.FirstName,
    e.LastName,
    (SELECT COUNT(*) FROM Orders o WHERE o.EmployeeID = e.EmployeeID) AS OrderCount
FROM 
    Employees e;
-- This query retrieves each employee's ID, first name, last name, and the count of orders they have processed using a correlated subquery.
Example of Non-Correlated Subquery:
SELECT 
    ProductName,
    Price
FROM 
    Products
WHERE 
    Price > (SELECT AVG(Price) FROM Products);
-- This query retrieves products that are priced above the average price of all products using a non-correlated subquery.

