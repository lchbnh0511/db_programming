DECLARE @id INT

SET @id = 1000

IF @id < 1 OR @id > 100
BEGIN
    PRINT 'Vui long` nhap so > 0 va <= 100'
END
ELSE IF NOT EXISTS (SELECT * FROM Categories WHERE CategoryID = @id)
BEGIN
    PRINT 'Vui long nhap dung'
END
ELSE
BEGIN
    DELETE FROM Categories
    WHERE CategoryID = @id
    PRINT 'xoa thanh cong !'
END