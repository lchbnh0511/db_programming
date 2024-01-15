--select
EXEC dbo.proc_SelectShipperByID @id = 1
--insert
EXEC dbo.proc_InsertShipper
    @companyName = N'VinGroup',
    @phone = '0369721544'
--Update
EXEC dbo.proc_UpdateShipperByID
    @companyName = N'Microsoft',
    @phone = N'0344252252',
    @id = 3
--Delete
DECLARE @ketqua INT
DECLARE @DeleteShipperID INT

SET @DeleteShipperID = 6

EXEC @ketqua = dbo.proc_DeleteShipperByID 
@id = @DeleteShipperID

IF @ketqua = 1
    PRINT 'Xóa thành công'
ELSE
    PRINT 'Xóa không thành công'
