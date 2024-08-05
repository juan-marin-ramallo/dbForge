SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO

-- =============================================
-- Author:		Federico Sobral
-- Create date: 02/10/2019
-- Description:	SP 
-- =============================================
CREATE PROCEDURE [dbo].[BackupGetIncident]
(
	 @LimitDate [sys].[DATETIME]
)
AS
BEGIN
	SELECT [Id],[Description],[ImageEncoded],[ImageEncoded2],[ImageEncoded3],[IdPersonOfInterest],[IdPointOfInterest],[CreatedDate],[ReceivedDate],[IdIncidentType]
	FROM [dbo].[Incident] WITH(NOLOCK)
	WHERE [CreatedDate] < @LimitDate
	GROUP BY [Id],[Description],[ImageEncoded],[ImageEncoded2],[ImageEncoded3],[IdPersonOfInterest],[IdPointOfInterest],[CreatedDate],[ReceivedDate],[IdIncidentType]
	ORDER BY [Id] ASC
END





GO