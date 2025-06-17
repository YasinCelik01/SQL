select * from arabalar;

-- Giriþ hesabýný (login) oluþtur
CREATE LOGIN readonly_user WITH PASSWORD = '123!';

-- Sadece okuma izni ver
CREATE USER readonly_user FOR LOGIN readonly_user;
ALTER ROLE db_datareader ADD MEMBER readonly_user;


-- readonly_user kullanýcýsýný db_datareader rolünden çýkar
ALTER ROLE db_datareader DROP MEMBER readonly_user;



-- readonly_user kullanýcýsýný sil
DROP USER readonly_user;

DROP LOGIN readonly_user;


