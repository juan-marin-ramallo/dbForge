SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		FS
-- Create date: 26/03/20
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[GetDevicesId]
(
	@IdPersonsOfInterest [sys].[varchar](max) = NULL
)
AS
BEGIN
	SELECT DeviceId
	FROM dbo.PersonOfInterest
	where Deleted = 0 AND DeviceId IS NOT NULL AND (@IdPersonsOfInterest IS NULL OR dbo.CheckValueInList(Id, @IdPersonsOfInterest) = 1)
END



GO