SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SaveAssetReportAttributeOption]
	 @IdAssetReportAttribute int
	,@Text varchar(100)
	,@IsDefault bit
AS
BEGIN
	
	INSERT INTO AssetReportAttributeOption ([IdAssetReportAttribute], [Text], [IsDefault], [Deleted])
	VALUES (@IdAssetReportAttribute, @Text, @IsDefault, 0)

END
GO