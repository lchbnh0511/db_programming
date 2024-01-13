--categories
SET IDENTITY_INSERT Categories ON
GO

INSERT INTO Categories(CategoryID,CategoryName,DESCRIPTION,PictureUrl)
VALUES
(1, N'Apple', NULL, NULL),
(2, N'Samsung', NULL, NULL),
(3, N'LG', NULL, NULL),
(4, N'Panasonic', NULL, NULL)
GO

SET IDENTITY_INSERT Categories OFF
GO
--customer
SET IDENTITY_INSERT Customer ON
GO

INSERT INTO Customer(CustomerID,ContactName,ContactTitle,CompanyName,Address,City,Phone,Email)
VALUES
(1, N'Bình', N'B', N'Lofi', N'Việt Nam', N'TP.HCM', N'0369721544', N'lechibinh0511@gmail.com'),
(2, N'Xuân Anh', N'XA', N'Lofi', N'Việt Nam', N'TP.HCM', N'0984462797', N'xanhngu@gmail.com'),
(3, N'Nhật Minh', N'NM', N'Microsoft', N'Mỹ', N'New York', N'0334585446', N'nhatminh131@gmail.com')
GO

SET IDENTITY_INSERT Customer OFF
GO
--suppliers
SET IDENTITY_INSERT Suppliers ON
GO

INSERT INTO Suppliers(SupplierID,CompanyName,ContactName,ContactTitle,Address,City,Phone,Email,HomePage)
VALUES
(1, N'Lofi', N'Bình', N'Developer', N'Việt Nam', N'TP.HCM', N'0369721544', N'lechibinh0511@gmail.com', N'facebook.com'),
(2, N'Lofi', N'Xuân Anh', N'Tester', N'Việt Nam', N'TP.HCM', N'0984462797', N'xanhngu@gmail.com', N'facebook.com'),
(3, N'Microsoft', N'Nhật Minh', N'Sale Manager', N'Mỹ', N'New York', N'0334585446', N'nhatminh131@gmail.com', N'Microsoft.com')
GO

SET IDENTITY_INSERT Suppliers OFF
GO
--shipper
SET IDENTITY_INSERT Shipper ON
GO

INSERT INTO Shipper(ShipperID,CompanyName,Phone)
VALUES
(1, N'Lofi', N'0346777999'),
(2, N'Microsoft', N'0561789789'),
(3, N'Hoa Sen', N'0363123333')
GO

SET IDENTITY_INSERT Shipper OFF
GO
--products
SET IDENTITY_INSERT Products ON
GO

INSERT INTO Products(ProductID,ProductName,CategoryID,SupplierID,QuantityPerUnit,UnitPrice,UnitInStock)
VALUES
(1, N'Iphone 15 Pro Max', 1, 1, 100, 30000000, 100),
(2, N'Samsung Galaxy Z Fold4 5G ', 2, 1, 100, 28000000, 100),
(3, N'Smart Tivi OLED LG 4K 83 inch', 3, 1, 100, 112000000, 100),
(4, N'Máy giặt Bosch WAX32M40SG Serie 8 10Kg', 4, 1, 100, 31200000, 100)
GO

SET IDENTITY_INSERT Products OFF
GO
--orders
SET IDENTITY_INSERT Orders ON
GO

INSERT INTO Orders(
    OrderId,
    CustomerId,
    OrderDate,
    ShipperId,
    ShipAddress,
    ShipCity
)   
VALUES
(1, 1, '2023-11-11', 1, N'123 Ngô Quyền', N'Đà Nẵng'),
(2, 2, '2023-12-12', 2, N'11 Trần Văn Dư', N'Hà Nội'),
(3, 3, '2023-10-10', 3, N'93 Lý Thái Tổ', N'Tp. Hồ Chí Minh'),
(4, 4, '2024-01-01', 4, N'32 Minh Mạng', N'Huế'),
(5, 5, '2023-09-09', 5, N'81 Hải Phòng', N'Đà Nẵng')
GO

SET IDENTITY_INSERT Orders OFF
GO
--order details
INSERT INTO OrderDetails(
    OrderId,
    ProductId,
    Quantity,
    UnitPrice,
    DiscountPercentage
)
VALUES
(1, 1, 1, 1000, 10),
(1, 2, 2, 800, 5),
(2, 3, 1, 700, 15),
(2, 4, 2, 500, 20),
(3, 5, 3, 200, 0),
(3, 6, 4, 100, 5),
(4, 7, 2, 300, 10),
(4, 8, 3, 400, 15),
(5, 9, 4, 500, 30),
(5, 10, 5, 600, 40)
GO