DECLARE @id INT
DECLARE @name NVARCHAR(255)
DECLARE @DESCRIPTION NVARCHAR(max)
DECLARE @PictureUrl NVARCHAR(2048)

SET @id = 5
SET @name = N'New Category--edit'
SET @DESCRIPTION = 'New Description--edit'
SET @PictureUrl = 'https://mcdn.coolmate.me/image/March2023/meme-meo-cute-hai-huoc-1297_421.jpg'

UPDATE Categories
SET
    CategoryName = @name,
    DESCRIPTION = @DESCRIPTION,
    PictureUrl = @PictureUrl
WHERE CategoryID = @id