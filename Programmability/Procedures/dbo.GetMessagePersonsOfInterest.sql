﻿SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		Jesús Portillo
-- Create date: 30/01/2013
-- Description:	SP para obtener los reponedores de un mensaje
-- =============================================
CREATE PROCEDURE [dbo].[GetMessagePersonsOfInterest]
(
	@IdMessage [sys].[int]
)
AS
BEGIN
	SELECT		[IdMessage], [IdPersonOfInterest], [Received], [ReceivedDate], [Read], [ReadDate]
	FROM		[dbo].[MessagePersonOfInterest]
	WHERE		[IdMessage] = @IdMessage
END




GO