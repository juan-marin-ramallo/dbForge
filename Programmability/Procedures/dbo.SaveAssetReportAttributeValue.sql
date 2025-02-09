﻿SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SaveAssetReportAttributeValue]
	 @IdAssetReport int
	,@IdAttribute int
	,@IdOption int = NULL
	,@ImageName varchar(100) = NULL
	,@Value varchar(MAX) = NULL
AS
BEGIN
	
	INSERT INTO AssetReportAttributeValue ([IdAssetReport], [IdAssetReportAttribute],
		[IdAssetReportAttributeOption], [ImageName], [ImageUrl], [Value])
	VALUES (@IdAssetReport, @IdAttribute, @IdOption, @ImageName, NULL, @Value) 

END
GO