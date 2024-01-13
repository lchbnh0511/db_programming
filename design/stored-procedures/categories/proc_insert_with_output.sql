CREATE PROCEDURE proc_InsertCategoryAndReturnID
(
    @name NVARCHAR(255),
    @description NVARCHAR(max),
    @pictureurl NVARCHAR(2048),
    @id INT OUTPUT
)
AS
BEGIN
    INSERT INTO Categories(
        CategoryName,
        DESCRIPTION,
        pictureurl
    ) 
    VALUES(@name, @description, @pictureurl)
        --print primary key value
    SET @id = (SELECT SCOPE_IDENTITY())
END    