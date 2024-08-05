SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO

-- =============================================
-- Author:		GL
-- Create date: 24/03/2016
-- Description:	SP para eliminar marcas de nfc
-- =============================================
CREATE PROCEDURE [dbo].[DeleteSavedNFCMarks]
(
	@PointOfInterestMarkIds [sys].[varchar](max)
)
AS
BEGIN
	DELETE FROM	[dbo].[PointOfInterestMark] 
	WHERE		((dbo.CheckValueInList([Id], @PointOfInterestMarkIds) = 1))
END



GO