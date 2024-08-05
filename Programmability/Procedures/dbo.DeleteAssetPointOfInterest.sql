SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[DeleteAssetPointOfInterest](
   @Id [sys].[int]
)
AS 
BEGIN
	UPDATE [dbo].[AssetPointOfInterest]
	SET [Deleted] = 1,
		[DateTo] = GETUTCDATE()
	WHERE [Id] = @Id
END
GO