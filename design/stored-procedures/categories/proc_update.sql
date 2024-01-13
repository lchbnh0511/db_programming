CREATE PROCEDURE proc_UpdateCategoryByID
(
    @id INT,
    @name NVARCHAR(255),
    @description NVARCHAR(MAX),
    @pictureUrl NVARCHAR(2048)
)
AS
BEGIN
    IF @id < 0
    BEGIN
        print 'Invalid id'
        RETURN 0
    END

    IF NOT EXISTS (SELECT * FROM Categories WHERE CategoryID = @id)
    BEGIN
        print 'Category not found'
        RETURN 0
    END

    UPDATE Categories
    SET 
        CategoryName = @name,
        Description = @description,
        PictureUrl = @pictureUrl
    WHERE CategoryID = @id

    --Xem gia tri
    SELECT * FROM Categories WHERE CategoryID = @id
END