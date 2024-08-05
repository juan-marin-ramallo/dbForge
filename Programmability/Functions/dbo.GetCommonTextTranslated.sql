SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO

-- =============================================
-- Author:		Jesús Portillo
-- Create date: 21/05/2019
-- Description:	Función para obtener un texto traducido de la tabla CommonText
-- =============================================
CREATE FUNCTION [dbo].[GetCommonTextTranslated]
(
	@Name [sys].[varchar](100)
)
RETURNS [sys].[varchar](5000)
AS
BEGIN
	DECLARE @Text [sys].[varchar](5000)
	SELECT @Text = ISNULL([Text], '') FROM [dbo].[CommonTextTranslated] WITH (NOLOCK) WHERE [Name] = @Name
	
	RETURN @Text
END
GO