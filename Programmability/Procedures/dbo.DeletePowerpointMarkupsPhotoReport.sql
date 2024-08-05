SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DeletePowerpointMarkupsPhotoReport] 
	@IdMarkup [sys].[int]
AS
BEGIN

	DELETE E
	
	FROM [dbo].[PowerpointMarkupFormReportElement] E
		INNER JOIN [dbo].[PowerpointMarkupPhotoReport] P ON P.[Id] = E.[IdPowerpointMarkupFormReport]
	WHERE P.[Id] = @IdMarkup
	
	DELETE [dbo].[PowerpointMarkupFormReport]
	WHERE Id = @IdMarkup

END
GO