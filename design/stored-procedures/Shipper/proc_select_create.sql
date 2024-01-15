CREATE PROCEDURE proc_SelectShipperByID
(
    @id INT
)
AS
BEGIN

    SELECT * FROM Shipper WHERE ShipperID = @id

END
