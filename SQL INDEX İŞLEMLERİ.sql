select * from arabalar where marka='toyota';


--INDEX OLUÞTURMA
CREATE INDEX IX_Arabalar_Marka ON Arabalar (marka);
--ÝNDEXLERÝ GÖRÜNTÜLEME
SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID('Arabalar');

--ÝNDEXLERÝ SÝLME
DROP INDEX IX_Arabalar_Marka ON Arabalar;

