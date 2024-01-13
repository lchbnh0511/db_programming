CREATE PROCEDURE proc_DeleteCategoryByID
(
    @id INT
)
AS
BEGIN
    IF @id < 1
    BEGIN
        print 'Invalid id'
        RETURN 0
    END

    IF NOT EXISTS (SELECT * FROM Categories WHERE CategoryID = @id)
    BEGIN
        print 'Category not found'
        RETURN 0
    END

    DELETE FROM Categories
    WHERE CategoryID = @id

    RETURN 1
END