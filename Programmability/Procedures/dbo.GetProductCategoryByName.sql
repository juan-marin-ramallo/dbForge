SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		Jesús Portillo
-- Create date: 02/07/2021
-- Description:	SP para obtener una categoría de
--				producto en base al nombre dado
--				por parámetros
-- =============================================
CREATE PROCEDURE [dbo].[GetProductCategoryByName]
	@Name [sys].[varchar](50)
AS
BEGIN
	SELECT		[Id], [Name], [Description]
	FROM		[dbo].[ProductCategory]
	WHERE		[Name] = @Name
END
GO