SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		GL
-- Create date: 25/07/2016
-- Description:	SP para obtener los motivos de la ruta no visitada
-- =============================================
CREATE PROCEDURE [dbo].[GetRouteNoVisitOptions]
	@IdOptions [sys].[VARCHAR](max) = NULL
AS
BEGIN

	SELECT		RO.[Id], RO.[Description], RO.[CreatedDate], RO.[IdUser], U.[Name], U.[LastName], RO.[Deleted]

	FROM		[dbo].[RouteNoVisitOption] RO
				INNER JOIN [dbo].[User] U ON U.[Id] = RO.[IdUser]
	
	WHERE		RO.[Deleted] = 0 AND
				((@IdOptions IS NULL) OR (dbo.CheckValueInList(RO.[Id], @IdOptions) = 1))
	
	ORDER BY 	RO.[Id]
END



GO