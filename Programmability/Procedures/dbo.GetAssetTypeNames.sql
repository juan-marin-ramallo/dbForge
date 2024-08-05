SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetAssetTypeNames] 
AS
BEGIN
	
	SELECT [Id], [Name]
	FROM AssetType
	WHERE [Deleted] = 0
	ORDER BY [Name]

END
GO