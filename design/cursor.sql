DECLARE @orderID INT
DECLARE @customerID INT
DECLARE @customerName NVARCHAR(255)

DECLARE @report TABLE
(
    OrderID INT,
    CustomerName NVARCHAR(255)
)

DECLARE myCur CURSOR
FOR 
	SELECT OrderID, CustomerID From Orders

OPEN myCur

FETCH NEXT FROM myCur INTO @orderID, @customerID

WHILE @@FETCH_STATUS = 0
BEGIN
	SET @customerName = (SELECT 
                            ContactName 
                        FROM 
                            Customer
                        WHERE CustomerID = @customerID)
    INSERT INTO @report (OrderID, CustomerName)
    VALUES (@orderID, @customerName)

    FETCH NEXT FROM myCur INTO @orderID, @customerID
END

CLOSE myCur
DEALLOCATE myCur

SELECT * FROM @report