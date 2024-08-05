SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO

-- =============================================
-- Author:		GL
-- Create date: 03/06/2019
-- Devuelve fecha de la foto de la tarea tomada para mostrarla en la imagen a descargar
-- =============================================

CREATE PROCEDURE [dbo].[GetCompletedFormDateByAnswerId] 
	@IdAnswer [sys].[INT]
AS
BEGIN

	SELECT		PRD.[Date]
	FROM		[dbo].[Answer] P WITH (NOLOCK)
	INNER JOIN	[dbo].[CompletedForm] PRD WITH (NOLOCK) ON PRD.[Id] = P.[IdCompletedForm]
	WHERE		P.[Id] = @IdAnswer
		
END



GO