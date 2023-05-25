--Write a query to find the second highest UnitPrice from Products table.
 
   select max (UnitPrice) as SecondHighestUnitPrice 
   from Products
   where UnitPrice < (select max (UnitPrice) from Products);


--Write a query to find the records of the products where UnitPrice is greater than the maximum UnitsInStock value.

  select *
  from Products
  where UnitPrice > (SELECT MAX(UnitsInStock) FROM Products);

--Write a query to display the complete record of the Product where UnitPrice is second highest.

  SELECT *
  FROM Products
  WHERE UnitPrice = (SELECT MAX(UnitPrice) FROM Products WHERE UnitPrice < (SELECT MAX(UnitPrice) FROM Products));

--Write a query to find all records from Customers and Orders table where CustomerID is common.

  SELECT *
  FROM Customers
  INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

--Write a query to find all records from Customers and only those records from Orders whose CustomerID is common with Customers table CustomerID.

  SELECT *
  FROM Customers
  INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID
  WHERE Customers.CustomerID IN (SELECT CustomerID FROM Orders);

/*In Employees table there are three columns - EmployeeId, EmployeeName & MgrId. MgrId is ManagerId.
 Each employee reports to the corresponding manager with respective MgrId. 
 Write a query to display records from Employees table so that the names of the Employee and Manager should be displayed side by side based on which Employee
 reports to which Manager. The expected output is shown below in the screenshot. Hint: you have to use self join.*/


  SELECT e.EmployeeName AS Employee, m.EmployeeName AS Manager
  FROM Employees e
  INNER JOIN Employees m ON e.MgrId = m.EmployeeId;

