SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		GL
-- Create date: 07/02/2017
-- Description:	SP para actuaizar entradas y salidas USANDO nfc A PUNTOS DE VENTA
-- =============================================
CREATE PROCEDURE [dbo].[UpdateNFCPointOfInterestVisited]
(
	 @EntryDate [sys].[datetime]
	,@ExitDate [sys].[datetime]
	,@Id [sys].[int] 
)
AS
BEGIN
	
	UPDATE	[dbo].[PointOfInterestMark]
	SET		[CheckInDate] = @EntryDate, [CheckOutDate] = @ExitDate, [Edited] = 1,
			[ElapsedTime] = @ExitDate - @EntryDate
	WHERE	[Id] = @Id

END




GO