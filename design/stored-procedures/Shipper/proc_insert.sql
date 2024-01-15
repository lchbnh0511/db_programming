CREATE PROCEDURE proc_InsertShipper
(
    @companyName NVARCHAR(255),
    @phone NVARCHAR(255)
)
AS
BEGIN
    INSERT INTO Shipper(
        CompanyName,
        Phone
        )
    VALUES (@companyName, @phone)
    -- print primary key value
    SELECT SCOPE_IDENTITY() AS ShipperID
END