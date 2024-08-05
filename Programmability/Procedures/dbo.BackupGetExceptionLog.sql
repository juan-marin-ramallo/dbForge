SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO

-- =============================================
-- Author:		Federico Sobral
-- Create date: 02/10/2019
-- Description:	SP 
-- =============================================
CREATE PROCEDURE [dbo].[BackupGetExceptionLog]
(
  @LimitDate [sys].[DATETIME]
)
AS
BEGIN
  SELECT a.[Id],a.[Date],a.[AssemblyName],a.[ClassName],a.[MethodName],a.[ExceptionMessage],a.[ExceptionDetails]
  FROM [dbo].ExceptionLog a WITH(NOLOCK)
  WHERE a.[Date] < @LimitDate
  GROUP BY a.[Id],a.[Date],a.[AssemblyName],a.[ClassName],a.[MethodName],a.[ExceptionMessage],a.[ExceptionDetails]
  ORDER BY a.[Id] ASC
END
GO