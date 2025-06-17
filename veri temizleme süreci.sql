SELECT  
COUNT(*) AS ToplamKayýt, 
SUM(CASE WHEN motor IS NULL THEN 1 ELSE 0 END) AS EksikKolon1, 
CAST(SUM(CASE WHEN motor IS NULL THEN 1 ELSE 0 END) AS FLOAT) 
/ COUNT(*) * 100 AS EksikKolon1Yuzdesi 
FROM arabalar; 

-- Eksik (NULL) deðerlerin tespiti 
SELECT * FROM arabalar WHERE motor IS NULL;
-- Eksik deðerlerin doldurulmasý (örneðin sabit deðerle) 

UPDATE arabalar 
SET motor = '1800' 
WHERE motor IS NULL; 
 

SELECT 
  id,
  marka,
  CASE 
    WHEN motor = '2000' THEN '2.0'   
    END AS motor_hacmi
FROM arabalar;