SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE VIEW [dbo].[AssetReportAttributeVisibilityTypeTranslated]
AS
SELECT        ARAVT.Id, ARAVTT.Description
FROM            dbo.SelectedLanguage AS L WITH (NOLOCK) LEFT OUTER JOIN
                         dbo.AssetReportAttributeVisibilityTypeTranslation AS ARAVTT WITH (NOLOCK) ON ARAVTT.IdLanguage = L.Id RIGHT OUTER JOIN
                         dbo.AssetReportAttributeVisibilityType AS ARAVT WITH (NOLOCK) ON ARAVT.Id = ARAVTT.IdAssetReportAttributeVisibilityType
GO