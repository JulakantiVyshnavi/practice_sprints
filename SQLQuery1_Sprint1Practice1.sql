--1. Write a query to create database with name `ShoppingDB`.--
create Database ShoppingDB

--2. Write a query to create a `Customer` table in `ShoppingDB` database with below mentioned structure details.
/*Column Name  | Datatype   |
-------------|------------|
CustomerID   |   int      |
CustomerName |varchar(10) |
Email        |varchar(20) |
Age          |   int      |
DOB          | Datetime   |*/

use ShoppingDB
create table Customer (
    CustomerID INT,
    CustomerName VARCHAR(10),
    Email VARCHAR(20),
    Age INT,
    DOB DATETIME
);
/* 2. Write a query to create an `Orders` table in `ShoppingDB` database with below mentioned structure details.
Column Name | Datatype   |
------------|------------|
OrderID     |   int      |
OrderDate   | Datetime   |
CustomerID  |   int      |*/

create table Orders(
       OrderId INT,
	   OrderDate DATETIME,
	   CustomerId INT
);

--Write a query to add a new column as `Phone` with datatype `varchar(10)`.--

		ALTER TABLE ShoppingDB.Customer
		ADD Phone VARCHAR(10);

--4. Write a query to modify `CustomerName` column datatype to `varchar(20)` and make it as `not null`.--

         ALTER TABLE ShoppingDb.Customer
         ALTER COLUMN CustomerName varchar(20) NOT NULL;

--5. Write a query to remove `DOB` column from `Customer` table.--

        ALTER TABLE ShoppingDb.Customer
		DROP COLUMN DOB;

--6. Write a query to remove `Customer` table from `ShoppingDB` database.--
         
		 DROP TABLE ShoppingDb.Customer;

