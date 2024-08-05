SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetPhotoReportExportAttributes]
AS
BEGIN
	
	SELECT A.[Id], A.[Name]
	FROM [dbo].[PhotoReportExportAttributeTranslated] A WITH (NOLOCK)

END
GO