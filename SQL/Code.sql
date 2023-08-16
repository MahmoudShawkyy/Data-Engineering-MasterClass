# Task One
SELECT Employees.FirstName AS Employees_FirstName,Employees.LastName AS Employees_LastName,
COUNT(Orders.OrderID) AS Number_of_Orders 
FROM Orders,Employees 
WHERE Orders.EmployeeID=Employees.EmployeeID
GROUP BY Orders.EmployeeID
ORDER BY Number_of_Orders DESC;

# Task Two
SELECT FirstName AS Employees_FirstName,LastName AS Employees_LastName, SUM(Quantity) AS Sold_Most_Beverages	
FROM Orders 
INNER JOIN Employees USING(EmployeeID)
INNER JOIN OrderDetails USING(OrderID)
INNER JOIN Products USING(ProductID)
INNER JOIN Categories USING(CategoryID)
WHERE CategoryName ="Beverages"
GROUP BY EmployeeID
ORDER BY Sold_Most_Beverages DESC

