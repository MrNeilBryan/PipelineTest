----------------------------------------------------------------
-- Create pipline audit table
----------------------------------------------------------------

IF OBJECT_ID('dbo.PipelineAudit') IS NULL
BEGIN
  CREATE TABLE dbo.PipelineAudit (ID            INT             NOT NULL IDENTITY(1,1) PRIMARY KEY, 
                                  [Message]     NVARCHAR(4000)  NOT NULL,
                                  [Timestamp]   DATETIME        NOT NULL DEFAULT GETDATE());
END
 
 
