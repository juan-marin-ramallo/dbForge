SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		Gaston Legnani
-- Create date: 11/08/2016
-- Description:	SP para obtener las categorias incluidas las eliminadas
-- =============================================
CREATE PROCEDURE [dbo].[GetCategoriesDeletedInclude]

AS
BEGIN
	
	SELECT		C.[Id], C.[Name], C.[SapId], C.[Society], B.[Id] AS BrandId, B.[Name] AS BrandName, C.[Deleted]
	
	FROM		[dbo].[Category] C
				LEFT JOIN [dbo].[Brand] B ON B.[Id] = C.[BrandId]
	
	GROUP BY	C.[Id], C.[Name], C.[SapId], C.[Society], B.[Id], B.[Name], C.[Deleted]
	
	ORDER BY	C.[Deleted], C.[Name]
    
END


GO