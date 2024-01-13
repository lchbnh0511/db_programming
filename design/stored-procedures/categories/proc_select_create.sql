CREATE PROCEDURE proc_SelectCategoryByID
AS
BEGIN
    DECLARE @id INT
    SELECT * FROM Categories WHERE CategoryID = @id
END