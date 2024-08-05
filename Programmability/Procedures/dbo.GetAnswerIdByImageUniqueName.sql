SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		Diego Cáceres
-- Create date: 31/10/2014
-- Description:	SP para obtener el id de una respuesta imagen por su nombre
-- =============================================
CREATE PROCEDURE [dbo].[GetAnswerIdByImageUniqueName] 
	@ImageUniqueName [sys].[varchar] (100)
AS
BEGIN

	SELECT A.[Id] AS AnswerId
	FROM [dbo].[Answer] A WITH(NOLOCK)
	WHERE A.[ImageName] = @ImageUniqueName
END



GO