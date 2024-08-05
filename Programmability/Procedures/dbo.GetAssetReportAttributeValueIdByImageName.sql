SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetAssetReportAttributeValueIdByImageName]
	@ImageUniqueName varchar(100)
AS
BEGIN
	
	SELECT [Id]
	FROM AssetReportAttributeValue
	WHERE [ImageName] = @ImageUniqueName

END
GO