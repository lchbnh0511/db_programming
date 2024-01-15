CREATE PROCEDURE proc_UpdateShipperByID
(
    @id INT,
    @companyName NVARCHAR(255),
    @phone NVARCHAR(255)
)
AS
BEGIN
    IF @id < 0
    BEGIN
        print 'ID không hợp lệ'
        RETURN 0
    END

    IF NOT EXISTS (SELECT * FROM Shipper WHERE ShipperID = @id)
    BEGIN
        print 'Không tìm thấy !'
        RETURN 0
    END

    UPDATE Shipper
    SET 
        CompanyName = @companyName,
        Phone = @phone
    WHERE ShipperID = @id

    SELECT * FROM Shipper WHERE ShipperID = @id
END