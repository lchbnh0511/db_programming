CREATE PROCEDURE proc_UpdateCustomerByID
(
    @id INT,
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
    IF @id < 0
    BEGIN
        print 'ID không hợp lệ'
        RETURN 0
    END

    IF NOT EXISTS (SELECT * FROM Customer WHERE CustomerID = @id)
    BEGIN
        print 'Không tìm thấy !'
        RETURN 0
    END

    UPDATE Customer
    SET 
        ContactName = @contactName,
        ContactTitle = @contactTitle,
        CompanyName = @companyName,
        Address = @address,
        City = @city,
        Phone = @phone,
        Email = @email
    WHERE CustomerID = @id

    SELECT * FROM Customer WHERE CustomerID = @id
END