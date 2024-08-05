SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[DeleteAllAssetsPointsOfInterest]
AS 
BEGIN
	UPDATE [dbo].[AssetPointOfInterest]
	SET [Deleted] = 1,
		[DateTo] = GETUTCDATE()
END
GO