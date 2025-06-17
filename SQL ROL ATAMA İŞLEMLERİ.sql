select * from arabalar;

-- Giri� hesab�n� (login) olu�tur
CREATE LOGIN readonly_user WITH PASSWORD = '123!';

-- Sadece okuma izni ver
CREATE USER readonly_user FOR LOGIN readonly_user;
ALTER ROLE db_datareader ADD MEMBER readonly_user;


-- readonly_user kullan�c�s�n� db_datareader rol�nden ��kar
ALTER ROLE db_datareader DROP MEMBER readonly_user;



-- readonly_user kullan�c�s�n� sil
DROP USER readonly_user;

DROP LOGIN readonly_user;


