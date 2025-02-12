﻿SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO

-- =============================================
-- Author:		Jesús Portillo
-- Create date: 06/02/2013
-- Description:	SP para marcar un mensaje como recibido
-- =============================================
CREATE PROCEDURE [dbo].[UpdateMessageAsReceived]
(
	 @IdMessage [sys].[int]
	,@IdPersonOfInterest [sys].[int]
	,@ReceivedDate [sys].[datetime]
)
AS
BEGIN
	UPDATE	[dbo].[MessagePersonOfInterest]
	SET		 [Received] = 1
			,[ReceivedDate] = @ReceivedDate
	WHERE	[IdMessage] = @IdMessage AND
			[IdPersonOfInterest] = @IdPersonOfInterest
END





GO