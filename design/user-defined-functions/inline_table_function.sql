CREATE FUNCTION func_GetOrders
(
    @fromDate DATETIME,
    @toDate DATETIME
)
RETURNS Table
as
RETURN
(
    SELECT o.OrderID, o.OrderDate, c.ContactName
    FROM ORDERS o JOIN Customer c 
    ON o.CustomerID = c.CustomerID
    WHERE o.OrderDate BETWEEN @fromDate and @toDate
)