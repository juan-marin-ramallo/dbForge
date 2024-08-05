SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================  
-- Author:  Jesús Portillo  
-- Create date: 08/02/2013  
-- Description: SP para obtener los tipos de reponedores  
-- =============================================  
CREATE PROCEDURE [dbo].[GetPersonOfInterestTypes]  
AS  
BEGIN  
 SELECT [Code], [Description], [IdTimeZone]
 FROM [dbo].[PersonOfInterestType]  
END
GO