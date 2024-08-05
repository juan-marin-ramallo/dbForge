SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE VIEW [dbo].[MobileFileLogTypeTranslated]
AS
SELECT  MFLT.Id, MFLTT.Description
FROM    dbo.SelectedLanguage AS L WITH (NOLOCK) LEFT OUTER JOIN
        dbo.MobileFileLogTypeTranslation AS MFLTT WITH (NOLOCK) ON MFLTT.IdLanguage = L.Id RIGHT OUTER JOIN
        dbo.MobileFileLogType AS MFLT WITH (NOLOCK) ON MFLT.Id = MFLTT.IdMobileFileLogType
GO