SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[BackupDeleteRouteDetail]
(
  @LimitDate [sys].[DATETIME]
)
AS
BEGIN
  DELETE a
  FROM [dbo].RouteDetail a WITH(NOLOCK)
  WHERE a.[RouteDate] < @LimitDate
END
GO