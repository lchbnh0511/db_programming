DECLARE @name NVARCHAR(255)
DECLARE @DESCRIPTION NVARCHAR(max)
DECLARE @PictureUrl NVARCHAR(2048)

SET @name = N'New Category'
SET @DESCRIPTION = 'New Description'
SET @PictureUrl = 'https://mcdn.coolmate.me/image/March2023/meme-meo-cute-hai-huoc-1297_421.jpg'

INSERT INTO Categories(
    CategoryName,
    DESCRIPTION,
    PictureUrl
)
VALUES(@name, @Description, @PictureUrl)