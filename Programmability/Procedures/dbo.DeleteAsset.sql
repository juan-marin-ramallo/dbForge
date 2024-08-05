SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[DeleteAsset]
	@Id [sys].[int]
AS 
BEGIN
    SET NOCOUNT ON;
    UPDATE	dbo.Asset
	SET		[Deleted] = 1
	WHERE	[Id] = @Id

	--DELETE FROM [dbo].[NotificationStockCounter]
	--WHERE [IdProduct] = @Id
END




GO