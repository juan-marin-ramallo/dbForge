SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		Jesús Portillo
-- Create date: 04/06/2012
-- Description:	SP para actualizar la distancia recorrida
--				en la marca de fin dada por parámetros
-- =============================================
CREATE PROCEDURE [dbo].[UpdateMarkTraveledDistance]
(
	 @IdMark [sys].[int]
	,@TraveledDistance [sys].[decimal](8, 2)
)
AS
BEGIN
	UPDATE	[dbo].[Mark]
	SET		[TraveledDistance] = @TraveledDistance
	WHERE	[Id] = @IdMark
END
GO