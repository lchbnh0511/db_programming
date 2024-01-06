--categories
CREATE TABLE Categories(
    CategoryID INT IDENTITY(1,1) PRIMARY KEY,
    CategoryName NVARCHAR(255) not NULL,
    DESCRIPTION NVARCHAR(max),
    PictureUrl NVARCHAR(2048)
)
--customer
CREATE TABLE Customer(
    CustomerID Int IDENTITY(1,1) PRIMARY KEY,
    ContactName NVARCHAR(255) not NULL,
    ContactTitle NVARCHAR(255),
    CompanyName NVARCHAR(255),
    Address NVARCHAR(255),
    City NVARCHAR(255),
    Phone NVARCHAR(255),
    Email NVARCHAR(255)
)
--suppliers
CREATE TABLE Suppliers(
    SupplierID INT IDENTITY(1,1) PRIMARY KEY,
    CompanyName NVARCHAR(255),
    ContactName NVARCHAR(255) not NULL,
    ContactTitle NVARCHAR(255),
    Address NVARCHAR(255),
    City NVARCHAR(255),
    Phone NVARCHAR(255),
    Email NVARCHAR(255),
    HomePage NVARCHAR(2048)
)
--shipper
CREATE TABLE Shipper(
    ShipperID INT IDENTITY(1,1) PRIMARY KEY,
    CompanyName NVARCHAR(255) NOT NULL,
    Phone NVARCHAR(255)
)
--products
CREATE TABLE Products(
    ProductID INT IDENTITY(1,1) PRIMARY KEY,
    ProductName NVARCHAR(255) not NULL,
    CategoryID INT FOREIGN KEY REFERENCES Categories(CategoryID),
    SupplierID INT FOREIGN KEY REFERENCES Suppliers(SupplierID),
    QuantityPerUnit INT NOT NULL DEFAULT(1),
    UnitPrice money NOT NULL DEFAULT(0),
    UnitInStock INT NOT NULL DEFAULT(0)
)
--orders
CREATE TABLE Orders(
    OrderID INT IDENTITY(1,1) PRIMARY KEY,
    CustomerID INT FOREIGN KEY REFERENCES Customer(CustomerID),
    OrderDate DATETIME not NULL,
    ShipperID INT FOREIGN KEY REFERENCES Shipper(ShipperID),
    ShipAddress NVARCHAR(255) NOT NULL,
    ShipCity NVARCHAR(255) NOT NULL
)
--order details
CREATE TABLE OrderDetails(
    OrderID INT NOT NULL FOREIGN KEY REFERENCES Orders(OrderID),
    ProductID INT NOT NULL FOREIGN KEY REFERENCES Products(ProductID),
    Quantity int not null,
    UnitPrice money,
    DiscountPercentage int not null,
    PRIMARY KEY (OrderID, ProductID)
)