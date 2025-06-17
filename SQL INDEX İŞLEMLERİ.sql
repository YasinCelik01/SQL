select * from arabalar where marka='toyota';


--INDEX OLU�TURMA
CREATE INDEX IX_Arabalar_Marka ON Arabalar (marka);
--�NDEXLER� G�R�NT�LEME
SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID('Arabalar');

--�NDEXLER� S�LME
DROP INDEX IX_Arabalar_Marka ON Arabalar;

