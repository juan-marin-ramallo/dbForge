SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================    
-- Author: Cristian Barbarini    
-- Create date: 21/12/23    
-- Description: SP para obtener companias por Ids    
-- =============================================    
CREATE PROCEDURE [dbo].[GetCompaniesByIds]    
 @IdCompanies [sys].VARCHAR(max) = NULL    
AS    
BEGIN    
    
 SELECT C.[Id]    
    ,C.[Name]    
    ,C.[Identifier]    
    ,C.[Description]    
    ,C.[ImageName]    
    ,C.[IsMain]    
    ,C.[Deleted]    
 FROM [dbo].[Company] C    
 WHERE [dbo].CheckValueInList(C.[Id], @IdCompanies) > 0    
 ORDER BY C.[IsMain] DESC, C.[Name] asc    
        
END
GO