SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO

-- =============================================
-- Author:		Matias Corso
-- Create date: 13/10/2016
-- Description:	SP para obtener las categorias disponibles para los productos
-- =============================================

CREATE PROCEDURE [dbo].[GetProductCategories]

AS
BEGIN
	SELECT	FC.[Id], FC.[Name], FC.[Description]
	FROM	[dbo].[ProductCategory] FC
	WHERE	FC.[Deleted] = 0
END



GO