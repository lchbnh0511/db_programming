CREATE PROCEDURE proc_SelectCustomerByID
(
    @id INT
)
AS
BEGIN

    SELECT * FROM Customer WHERE CustomerID = @id

END
