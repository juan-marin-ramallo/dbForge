SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		Jesús Portillo
-- Create date: 28/05/2015
-- Description:	SP para obtener la última locación recibida antes de la dada por @IdLocation de una Persona de Interes
-- =============================================
CREATE PROCEDURE [dbo].[GetPersonOfInterestPreviousDayLastLocation]
(
	 @IdPersonOfInterest [sys].[int]
    ,@IdLocation [sys].[int]
)
AS
BEGIN
	SELECT		TOP(1)  [Id], [Date], [Latitude], [Longitude], [Accuracy]
	FROM		[dbo].[Location] WITH (NOLOCK)
	WHERE		[IdPersonOfInterest] = @IdPersonOfInterest AND [Id] < @IdLocation
	ORDER BY	[Id] DESC
END



GO