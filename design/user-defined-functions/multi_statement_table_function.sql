CREATE FUNCTION func_CustomerReport
(
    @fromDate DATETIME,
    @toDate DATETIME
)
RETURNS @report Table
(
    CustomerID INT,
    CustomerName NVARCHAR(255),
    AmountOrder INT,
    Total money
)
AS
BEGIN
    INSERT INTO @report(CustomerID, CustomerName, AmountOrder, Total)
        SELECT c.CustomerID, c.ContactName, COUNT(o.OrderID), SUM(Quantity * UnitPrice)
        FROM Orders o JOIN Customer c 
        ON c.CustomerID = o.CustomerID JOIN OrderDetails od
        ON o.OrderID = od.OrderID
        WHERE OrderDate BETWEEN @fromDate and @toDate
        GROUP BY c.CustomerID, c.ContactName
    RETURN
END
