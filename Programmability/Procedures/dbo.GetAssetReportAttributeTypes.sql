SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetAssetReportAttributeTypes]
AS
BEGIN
	
	SELECT [Id], [Description]
	FROM AssetReportAttributeTypeTranslated WITH (NOLOCK)
	ORDER BY [Order] ASC

END
GO