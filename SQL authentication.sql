-- Windows Authentication için
CREATE LOGIN [DESKTOP-JQH9ME2\YASIN] FROM WINDOWS;
-- SQL Server Authentication ile kullanýcý
CREATE LOGIN Test WITH PASSWORD = 'StrongPass123!';

USE proje;
CREATE USER Test FOR LOGIN Test;
ALTER ROLE db_datareader ADD MEMBER Test;
ALTER ROLE db_datawriter ADD MEMBER Test;

USE proje;
DROP USER Test;

DROP LOGIN Test;