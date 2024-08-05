SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO

-- =============================================
-- Author:		Jesús Portillo
-- Create date: 06/02/2013
-- Description:	SP para marcar un mensaje como leído
-- =============================================
CREATE PROCEDURE [dbo].[UpdateMessageAsRead]
(
	 @IdMessage [sys].[int]
	,@IdPersonOfInterest [sys].[int]
	,@ReadDate [sys].[datetime]
)
AS
BEGIN
	UPDATE	[dbo].[MessagePersonOfInterest]
	SET		 [Read] = 1
			,[ReadDate] = @ReadDate
	WHERE	[IdMessage] = @IdMessage AND
			[IdPersonOfInterest] = @IdPersonOfInterest
END





GO