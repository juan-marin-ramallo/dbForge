﻿SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================  
-- Author: Cristian Barbarini  
-- Create date: 19/12/23  
-- Description: SP para obtener marcas por Ids  
-- =============================================  
CREATE PROCEDURE [dbo].[GetProductBrandsByIds]  
 @IdProductBrands [sys].VARCHAR(max) = null  
AS  
BEGIN  
 SELECT b.[Id]  
    ,b.[IdCompany]  
    ,b.[Name]  
    ,b.[Identifier]  
 FROM [dbo].[ProductBrand] b  
 WHERE [dbo].CheckValueInList(b.[Id], @IdProductBrands) = 1  
END
GO