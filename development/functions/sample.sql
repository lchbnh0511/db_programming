SELECT ProductID, ProductName, dbo.func_GetCategoryName(CategoryID) AS CategoryName
FROM Products
--
SELECT * FROM dbo.func_GetOrders('2024-01-01', '2024-01-30')

SELECT * FROM dbo.func_GetOrders('2024-01-01', '2024-01-30') as vOrders JOIN OrderDetails od
ON vOrder.OrderID = od.OrderID
--
SELECT * FROM dbo.func_CustomerReport('2024-01-01', '2024-01-30')