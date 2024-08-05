SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		Jesús Portillo
-- Create date: 30/06/2021
-- Description:	SP para guardar asociación entre
--				categorías de productos y marcas
--				de productos
-- =============================================
CREATE PROCEDURE [dbo].[SaveProductBrandProductCategories]
(
	 @IdProductBrand [sys].[int]
	,@IdProductCategories [sys].[varchar](max)
)
AS
BEGIN
	INSERT INTO [dbo].[ProductBrandProductCategory]([IdProductBrand], [IdProductCategory])
	SELECT	@IdProductBrand, [Id]
	FROM	[dbo].[ProductCategory]
	WHERE	dbo.CheckValueInList([Id], @IdProductCategories) = 1
END
GO