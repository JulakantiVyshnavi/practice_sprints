/*1. Write a query to add `Primary Key` constraint on `CustomerID` column.*/


ALTER TABLE Customer
ADD CONSTRAINT PK_CustomerID PRIMARY KEY (CustomerID);

/*2. Write a query to add `Check` constraint on `Age` column with validation that age should be in the range of 18 and 30.*/

ALTER TABLE Customer
ADD CONSTRAINT CHK_AgeRange CHECK (Age >= 18 AND Age <= 30);


/*3. Write a query to add `Unique` constraint to `Email` column.*/

ALTER TABLE Customer
ADD CONSTRAINT UQ_Email UNIQUE (Email);

/*4. Write a query to add `Foriegn Key` constraint on `CustomerID` column of `Orders` table with reference of `Customers` table.*/

ALTER TABLE Orders
ADD CONSTRAINT FK_CustomerID FOREIGN KEY (CustomerID)
REFERENCES Customer(CustomerID);

