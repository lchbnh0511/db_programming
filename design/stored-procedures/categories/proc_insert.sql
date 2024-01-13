CREATE PROCEDURE proc_InsertCategory
(
    @name NVARCHAR(255),
    @description NVARCHAR(max),
    @pictureurl NVARCHAR(2048)
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
    SELECT SCOPE_IDENTITY() AS CategoryID
END    