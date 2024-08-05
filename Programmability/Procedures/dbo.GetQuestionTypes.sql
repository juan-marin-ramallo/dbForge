SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		Diego Cáceres
-- Create date: 07/10/2014
-- Description:	SP para obtener los tipos de preguntas
-- =============================================
CREATE PROCEDURE  [dbo].[GetQuestionTypes]
	
AS
BEGIN
	SELECT	[Code], [Description]
	FROM	[dbo].[QuestionTypeTranslated] WITH (NOLOCK)
	ORDER BY [Order]
END



GO