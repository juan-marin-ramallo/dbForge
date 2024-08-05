SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================  
-- Author: Cristian Barbarini  
-- Create date: 19/12/23  
-- Description: SP para obtener las categorias disponibles para los productos por Ids  
-- =============================================  
CREATE PROCEDURE [dbo].[GetProductCategoriesByIds]  
 @ProductCategoriesId VARCHAR(MAX) = NULL  
AS  
BEGIN  
 SELECT PC.[Id], PC.[Name], PC.[Description]  
 FROM [dbo].[ProductCategory] PC WITH (NOLOCK)  
 WHERE dbo.CheckValueInList(PC.[Id], @ProductCategoriesId) = 1  
END
GO