SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		Jesús Portillo
-- Create date: 13/05/2020
-- Description:	SP para obtener los estilos de powerpoint
-- =============================================
CREATE PROCEDURE [dbo].[GetPowerPointStyles]
AS
BEGIN
	SELECT		[Id], [Name]
	FROM		[dbo].[PowerPointStyle] WITH (NOLOCK)
	WHERE		[Deleted] = 0
	ORDER BY	[Name]
END
GO