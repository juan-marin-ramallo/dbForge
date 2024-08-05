SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO

-- =============================================
-- Author:		FS
-- Create date: 20/03/2020
-- Description:	SP para guardar una marca y hacer checkin/out en punto
-- =============================================
CREATE PROCEDURE [dbo].[SaveMarkImage]
(
	 @IdMark [sys].[int]
	,@ImageUniqueName [sys].[varchar](256)
	,@ImageUrl [sys].[varchar](512)
)
AS
BEGIN
	UPDATE	dbo.[PointOfInterestManualVisited]
	SET	    [CheckInImageUrl] = IIF([CheckInImageName] = @ImageUniqueName, @ImageUrl, [CheckInImageUrl])
		   ,[CheckOutImageUrl] = IIF([CheckOutImageName] = @ImageUniqueName, @ImageUrl, [CheckOutImageUrl])
	WHERE	[Id] = @IdMark
END
GO