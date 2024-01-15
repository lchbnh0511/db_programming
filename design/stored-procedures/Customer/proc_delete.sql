CREATE PROCEDURE proc_DeleteCustomerByID
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

    IF NOT EXISTS (SELECT * FROM Customer WHERE CustomerID = @id)
    BEGIN
        print 'Không tìm thấy'
        RETURN 0
    END

    DELETE FROM Customer
    WHERE CustomerID = @id

    RETURN 1
END