SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO

-- =============================================
-- Author:		Federico Sobral
-- Create date: 02/10/2019
-- Description:	SP 
-- =============================================
CREATE PROCEDURE [dbo].[BackupGetCompletedForm]
(
  @LimitDate [sys].[DATETIME]
)
AS
BEGIN
  SELECT a.[Id],a.[IdForm],a.[IdPersonOfInterest],a.[IdPointOfInterest],a.[Latitude],a.[Longitude],a.[Date],a.[ReceivedDate],a.[StartDate],a.[InitLatitude],a.[InitLongitude],a.[CompletedFromWeb]
  FROM [dbo].CompletedForm a WITH(NOLOCK)
  WHERE a.[Date] < @LimitDate
  GROUP BY a.[Id],a.[IdForm],a.[IdPersonOfInterest],a.[IdPointOfInterest],a.[Latitude],a.[Longitude],a.[Date],a.[ReceivedDate],a.[StartDate],a.[InitLatitude],a.[InitLongitude],a.[CompletedFromWeb]
  ORDER BY a.[Id] ASC
END



GO