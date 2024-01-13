--select
EXEC dbo.proc_SelectCategoryByID @id = 1
--insert
EXEC dbo.proc_InsertCategory
    @name = N'New Cat',
    @description = N'New Description',
    @pictureurl = 'https://tracnghiem.vn'
--insert with output
DECLARE @CategoryID INT
EXEC dbo.proc_InsertCategoryAndReturnID
    @name = N'New Cat',
    @description = N'New Description',
    @pictureurl = 'https://tracnghiem.vn',
    @id = @CategoryID OUTPUT

select @CategoryID as CategoryNewID
--Update
EXEC dbo.proc_UpdateCategory
    @name = N'New Cat',
    @description = 'New Cate',
    @pictureurl = 'https://tracnghiem.vn',
    @id = 5