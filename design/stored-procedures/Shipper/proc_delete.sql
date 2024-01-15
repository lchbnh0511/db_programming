CREATE PROCEDURE proc_DeleteShipperByID
(
    @id INT
)
AS
BEGIN
    IF @id < 1
    BEGIN
        print 'ID không hợp lệ'
        RETURN 0
    END

    IF NOT EXISTS (SELECT * FROM Shipper WHERE ShipperID = @id)
    BEGIN
        print 'Không tìm thấy'
        RETURN 0
    END

    DELETE FROM Shipper
    WHERE ShipperID = @id

    RETURN 1
END