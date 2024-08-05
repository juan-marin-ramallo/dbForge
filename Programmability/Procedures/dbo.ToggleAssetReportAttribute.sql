SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ToggleAssetReportAttribute]
	 @Id int
	,@Enable bit
AS
BEGIN
	
	UPDATE [dbo].[AssetReportAttribute]
	SET [Enabled] = @Enable
	WHERE [Id] = @Id

END
GO