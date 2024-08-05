SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO

-- =============================================
-- Author:		Gastón Legnani
-- Create date: 22/10/2020
-- Description:	SP para actualizar un file link de envio automatico de reporte
-- =============================================
create PROCEDURE [dbo].[UpdateScheduleReportFileLink]
(
	 @IdScheduleReport [sys].[int]	
	,@FileLink [sys].VARCHAR(5000)
)
AS
BEGIN
	
	UPDATE	[dbo].[ScheduleReport]
	SET		[FileLink] = @FileLink
	WHERE	[Id] = @IdScheduleReport

END




GO