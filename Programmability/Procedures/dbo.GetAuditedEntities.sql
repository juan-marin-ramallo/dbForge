SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		Federico Sobral
-- Create date: 22/08/2016
-- Description:	SP para obtener 
-- =============================================
CREATE PROCEDURE [dbo].[GetAuditedEntities]

AS
BEGIN
	
	SELECT		[Id], [Name]
	FROM		[dbo].AuditedEntityTranslated WIT (NOLOCK)
	ORDER BY	[Name] ASC
    
END


GO