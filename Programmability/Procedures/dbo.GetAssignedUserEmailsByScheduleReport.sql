﻿SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		GL
-- Create date: 23/04/2019
-- Description:	SP para obtener LOS EMAILS de un REPORTE AUTOMATICO dado
-- =============================================
CREATE PROCEDURE [dbo].[GetAssignedUserEmailsByScheduleReport]
	
	@IdScheduleReport [sys].[INT]
AS
BEGIN

	SELECT		AF.[Email]
			
	FROM		[dbo].[ScheduleReportUserEmail] AF WITH(NOLOCK)

	WHERE		AF.[IdScheduleReport] = @IdScheduleReport
	
	GROUP BY	AF.[Email]
	
END



GO