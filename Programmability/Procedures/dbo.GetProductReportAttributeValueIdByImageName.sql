﻿SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetProductReportAttributeValueIdByImageName]
	@ImageName varchar(100)
AS
BEGIN
	
	SELECT [Id] FROM [dbo].[ProductReportAttributeValue] with (nolock) WHERE [ImageName] = @ImageName  

END
GO