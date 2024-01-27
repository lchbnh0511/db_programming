CREATE FUNCTION func_GetCategoryName
(
    @categoryID INT
)
RETURNS NVARCHAR(255)
as
BEGIN
    DECLARE @result NVARCHAR(255)
    SET @result = (SELECT CategoryName FROM Categories WHERE CategoryID = @categoryID)
    RETURN @result
END