SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		Jesús Portillo
-- Create date: 11/08/2014
-- Description:	SP para obtener las ventanas horarias de un punto de interés
-- =============================================
CREATE PROCEDURE [dbo].[GetPointOfInterestHourWindows]
(
	@IdPointOfInterest [sys].[int]
)
AS
BEGIN
	SELECT		[IdPointOfInterest], [IdDayOfWeek], [FromHour], [ToHour]
	FROM		[dbo].[PointOfInterestHourWindow] WITH (NOLOCK)
	WHERE		[IdPointOfInterest] = @IdPointOfInterest
END




GO