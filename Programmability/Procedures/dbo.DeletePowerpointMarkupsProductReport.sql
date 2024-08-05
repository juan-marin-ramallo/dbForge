SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		Federico Sobral
-- Create date: 08/06/2017
-- Description:	SP para eliminar un formato powerpoint para el form report
-- =============================================
CREATE PROCEDURE [dbo].[DeletePowerpointMarkupsProductReport]	
	 @IdMarkup [sys].[int]
AS
BEGIN

	DELETE e
	FROM [dbo].[PowerpointMarkupProductReportElement] e
			INNER JOIN [dbo].[PowerpointMarkupProductReport] f ON f.Id = e.IdPowerpointMarkupProductReport
	WHERE f.Id = @IdMarkup
	
	DELETE [dbo].[PowerpointMarkupProductReport]
	WHERE Id = @IdMarkup	
END
GO