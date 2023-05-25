1. --Write a query to retrieve data from `Customers` table whose `ContactTitle` is `Sales Manager`.
      
	  select * from Customers where ContactTitle as Sales Manager;

--2. Write a query to retrieve data from `Customers` table whose `ContactName` starts with letter `s`.
    
	   select *from Customers where ContactName like s%;
	   
--3. Write a query to retrieve data from `Customers` table who lives in `London`, `Paris`, `Madrid` or `San Francisco` city.

        select * from Customers Where City in ('London', 'Paris', 'Madrid', 'San Francisco');


--4. Write a query to retrieve data from `Customers` table for all those customers who do not have `Fax` number.

        select * from Customers where fax is null;
	   
--5. Write a query to retrieve data from `Customers` table arranged in alphabetical order based on `ContactName`.
        
		select * from Customers order by ContactName;
        
/*6. Write a query to retrieve data from `Products` table to find how much total `UnitsInStock` you have from each Supplier. Group the `SupplierID` and calculate
  the sum of corresponding `UnitsInStock` for each supplier. Further filter the data to display records where SupplierID range between 10 to 30.*/
  
        select SupplierID, Sum(UnitsInStock) as TotalUnitsInStock
		from * Products
		where SupplierID between 10 and 30
		group by SupplierID;

/*7. Write a query to retrieve data from `Products` table to show only `ProductID`, `ProductName`, `UnitPrice` & `UnitsInStock`. Also show the `TotalAmount` 
    by multiplying `UnitPrice` with `UnitsInStock`.*/
	
	select ProductID, ProductName, UnitPrice, UnitsInStock, (UnitPrice * UnitsInStock) a TotalAmount
    from Products;

--8. Write a query to retrieve data from `Products` table where `UnitsInStock` is greater than or equals to `10` and less than equals to `100`.

    select * from Products where UnitsInStock between 10 and 100;

--9. Write a query to retrieve data from `Products` table for all products with `ProductID` range between `10` to `20`.
     
	 select * from Products where ProductID between 10 and 20;

--10. Write a query to retrieve data from `Products` table whose `QuantityPerUnit` is in `bottles`.
  
    select * from Products where QuantityPerUnit like '%bottles%';
