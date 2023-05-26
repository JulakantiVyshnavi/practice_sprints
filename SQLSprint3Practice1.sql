/*Write an SQL statement to create a scalar function 
with name fnFactorial which should take an integer parameter
 and returns the factorial of the given number.*/
 
 CREATE FUNCTION fnFactorial(@Number INT)
RETURNS INT
AS
BEGIN
    DECLARE @Result INT = 1;
    WHILE @Number > 1
    BEGIN
        SET @Result = @Result * @Number;
        SET @Number = @Number - 1;
    END
    RETURN @Result;
END;

 
 
/*Write an SQL statement to create a function with name 
fnGetCustomersByAge which should take Age as 
parameter and returns the records from Customer table where 
age is greater than or equal to the Age parameter.*/

CREATE FUNCTION fnGetCustomersByAge(@Age INT)
RETURNS TABLE
AS
RETURN
    SELECT *
    FROM Customer
    WHERE Age >= @Age;


/*Write an SQL statement to create a 
function with name fnGetOldestCustomer 
which should return the record of the oldest customer by age.*/


CREATE FUNCTION fnGetOldestCustomer()
RETURNS TABLE
AS
RETURN
    SELECT TOP 1 *
    FROM Customer
    ORDER BY Age ASC;




/*Write an SQL statement to alter a function 
fnGetCustomersByAge which should take 
Age as parameter and returns only the CustomerName.*/


ALTER FUNCTION fnGetCustomersByAge(@Age INT)
RETURNS TABLE
AS
RETURN
    SELECT CustomerName
    FROM Customer
    WHERE Age >= @Age;


--Write an SQL statement to delete a function fnFactorial.

DROP FUNCTION fnFactorial;
