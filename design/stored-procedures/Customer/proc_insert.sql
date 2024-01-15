CREATE PROCEDURE proc_InsertCustomer
(
    @contactName NVARCHAR(255),
    @contactTitle NVARCHAR(255),
    @companyName NVARCHAR(255),
    @address NVARCHAR(255),
    @city NVARCHAR(255),
    @phone NVARCHAR(255),
    @email NVARCHAR(255)
)
AS
BEGIN
    INSERT INTO Customer(
        ContactName,
        ContactTitle,
        CompanyName,
        Address,
        City,
        Phone,
        Email
        )
    VALUES (@contactName, @contactTitle, @companyName,@address, @city, @phone, @email)
    -- print primary key value
    SELECT SCOPE_IDENTITY() AS CustomerID
END