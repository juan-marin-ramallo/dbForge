SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		FS
-- Create date: 26/03/20
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[GetMobileScripts]
AS
BEGIN
	SELECT Id, Name
	FROM dbo.MobileScriptTranslated
	ORDER BY Id ASC
END



GO