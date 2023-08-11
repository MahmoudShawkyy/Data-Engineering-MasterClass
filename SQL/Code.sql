# Task One
SELECT Employees.FirstName AS Employees_FirstName,Employees.LastName AS Employees_LastName,
COUNT(Orders.OrderID) AS Number_of_Orders 
FROM Orders,Employees 
WHERE Orders.EmployeeID=Employees.EmployeeID
GROUP BY Orders.EmployeeID
ORDER BY Number_of_Orders DESC;
