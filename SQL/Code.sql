# Task One
SELECT Employees.FirstName AS Employees_FirstName,Employees.LastName AS Employees_LastName,
COUNT(Orders.OrderID) AS Number_of_Orders 
FROM Orders,Employees 
WHERE Orders.EmployeeID=Employees.EmployeeID
GROUP BY Orders.EmployeeID
ORDER BY Number_of_Orders DESC;

# Task Two
SELECT Employees.FirstName AS Employees_FirstName,Employees.LastName AS Employees_LastName,
COUNT(Orders.OrderID) AS Sold_Most_Beverages 
FROM Orders,Employees 
WHERE Orders.EmployeeID=Employees.EmployeeID AND OrderID IN (SELECT OrderID
FROM OrderDetails
WHERE ProductID IN (SELECT ProductID
FROM Products
WHERE CategoryID=1
GROUP BY ProductID))
GROUP BY Orders.EmployeeID
ORDER BY Sold_Most_Beverages DESC;

