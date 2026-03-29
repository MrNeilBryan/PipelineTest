---------
-- Test 11
---------



IF OBJECT_ID('dbo.Users') IS NULL
  BEGIN
    CREATE TABLE dbo.Users (ID INT PRIMARY KEY, [Name] NVARCHAR(100));
    PRINT CONVERT(NVARCHAR(4000), GETDATE(), 120) + ' - Table dbo.Users created.';  
  END
END
ELSE
BEGIN
  PRINT CONVERT(NVARCHAR(4000), GETDATE(), 120) + ' - Table dbo.Users already exists.';  
END



