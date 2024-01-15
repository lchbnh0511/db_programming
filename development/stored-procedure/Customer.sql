--select
EXEC dbo.proc_SelectCustomerByID @id = 1
--insert
EXEC dbo.proc_InsertCustomer
    @contactName = N'Nhật Phương',
    @contactTitle = N'NP',
    @companyName = N'VinGroup',
    @address = N'Việt Nam',
    @city = N'Hà Nội',
    @phone = N'0984264648',
    @email = 'nhatphuong@gmail.com'
--Update
EXEC dbo.proc_UpdateCustomerByID
    @contactName = N'Nguyễn Nhật Minh',
    @contactTitle = N'NNM',
    @companyName = N'Microsoft',
    @address = N'Việt Nam',
    @city = N'Đà Nẵng',
    @phone = N'0366252263',
    @email = 'nnhatminh@gmail.com',
    @id = 3
--Delete
DECLARE @ketqua INT
DECLARE @DeleteCustomerID INT

SET @DeleteCustomerID = 5

EXEC @ketqua = dbo.proc_DeleteCustomerByID 
@id = @DeleteCustomerID

IF @ketqua = 1
    PRINT 'Xóa thành công'
ELSE
    PRINT 'Xóa không thành công'
