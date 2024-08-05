SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[BackupDeleteSynchronizationLogError]
(
  @LimitDate [sys].[DATETIME]
)
AS
BEGIN
  DELETE a
  FROM [dbo].SynchronizationLogError a WITH(NOLOCK)
	INNER JOIN dbo.[SynchronizationLog] b WITH(NOLOCK) ON a.IdSynchronizationLog = b.Id
  WHERE b.[Date] < @LimitDate
END
GO