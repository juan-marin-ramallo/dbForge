SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetAssetReportAllAttributeNames]
AS
BEGIN
	
	SELECT A.[Id], A.[Name], T.[Id] AS TypeId
	
	FROM [dbo].[AssetReportAttribute] A WITH (NOLOCK)
	INNER JOIN	[dbo].[AssetReportAttributeTypeTranslated] T WITH (NOLOCK) ON T.[Id] = A.[IdType]
	
	WHERE A.[Deleted] = 0
	
	ORDER BY A.[Order] ASC

END
GO