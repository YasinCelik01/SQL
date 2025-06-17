SELECT 
    d.name AS DatabaseName,
    b.backup_start_date,
    b.backup_finish_date,
    b.type AS BackupTypeCode,
    CASE b.type
        WHEN 'D' THEN 'Full'
        WHEN 'I' THEN 'Differential'
        WHEN 'L' THEN 'Transaction Log'
        ELSE b.type
    END AS BackupType,
    b.backup_size / 1024 / 1024 AS BackupSizeMB,
    mf.physical_device_name AS BackupLocation,
    b.recovery_model
FROM 
    msdb.dbo.backupset b
JOIN 
    msdb.dbo.backupmediafamily mf ON b.media_set_id = mf.media_set_id
JOIN 
    sys.databases d ON b.database_name = d.name
WHERE 
    b.backup_start_date >= DATEADD(DAY, -7, GETDATE())
ORDER BY 
    b.backup_finish_date DESC;
