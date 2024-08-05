SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[GetAssetImage]
	@Id [sys].[int]
AS
BEGIN

	SELECT	[ImageArray]
	FROM	dbo.Asset
	WHERE	[Id] = @Id
END



GO