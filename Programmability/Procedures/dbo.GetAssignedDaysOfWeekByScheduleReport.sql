SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		GL
-- Create date: 23/04/2019
-- Description:	SP para obtener lOS DIAS DE ENVIO de un REPORTE AUTOMATICO dado
-- =============================================
create PROCEDURE [dbo].[GetAssignedDaysOfWeekByScheduleReport]
	
	@IdScheduleReport [sys].[INT]
AS
BEGIN

	SELECT		AF.[DayOfWeek]
			
	FROM		[dbo].[ScheduleReportDayOfWeek] AF WITH(NOLOCK)

	WHERE		AF.[IdScheduleReport] = @IdScheduleReport
	
	GROUP BY	AF.[DayOfWeek]
	
END



GO