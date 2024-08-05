SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		GL
-- Create date: 17/04/2019
-- Description:	SP para obtener los emails a enviar de los reportes automaticos
-- =============================================
CREATE PROCEDURE [dbo].[UpdateScheduleReportEmailToSend]
(
	@IdScheduleReportEmailToSend [sys].[int],
	@SentAlready [sys].[bit]
)
AS
BEGIN

	UPDATE	[dbo].[ScheduleReportEmailsToSend]
	SET		[Sent] = @SentAlready , [SendingAttempts] = [SendingAttempts] + 1, [LastTryAttempt] = GETUTCDATE()
	WHERE	[Id] = @IdScheduleReportEmailToSend

END




GO