----------------------------------------------------------
-- Create the Users Table
----------------------------------------------------------
DECLARE @Message NVARCHAR(4000) = N'';

IF OBJECT_ID('dbo.Users') IS NULL
  BEGIN
    CREATE TABLE dbo.Users (ID INT PRIMARY KEY, [Name] NVARCHAR(100));
    SET @Message  =  CONVERT(NVARCHAR(4000), GETDATE(), 120) + ' - Table dbo.Users created.';  
    INSERT dbo.PipelineAudit ([Message]) SELECT @Message;
  END
  ELSE
  BEGIN
    SET @Message  =  CONVERT(NVARCHAR(4000), GETDATE(), 120) + ' - Table dbo.Users already exists.';  
    INSERT dbo.PipelineAudit ([Message]) SELECT @Message;
  END
 
 
