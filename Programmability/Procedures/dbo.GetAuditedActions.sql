SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		Federico Sobral
-- Create date: 22/08/2016
-- Description:	SP para obtener 
-- =============================================
CREATE PROCEDURE [dbo].[GetAuditedActions]

AS
BEGIN
	
	SELECT		[Id], [Name]
	FROM		[dbo].AuditedActionTranslated WITH (NOLOCK)
	ORDER BY	[Name] ASC
    
END


GO