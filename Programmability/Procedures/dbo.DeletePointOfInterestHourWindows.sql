SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO

-- =============================================
-- Author:		Jesús Portillo
-- Create date: 11/08/2014
-- Description:	SP para eliminar las ventanas horarias de un punto de interés
-- =============================================
CREATE PROCEDURE [dbo].[DeletePointOfInterestHourWindows]
(
	 @IdPointOfInterest [sys].[int]
)
AS
BEGIN
	DELETE FROM	[dbo].[PointOfInterestHourWindow]
	WHERE		[IdPointOfInterest] = @IdPointOfInterest
END





GO