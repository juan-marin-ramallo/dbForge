SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[DeleteScheduleReportUser](
    @IdScheduleReport [sys].[int]
   ,@IdUser [sys].[int]
)
AS 
BEGIN

	DELETE FROM [dbo].[ScheduleReportUser]
	WHERE [IdScheduleReport] = @IdScheduleReport AND [IdUser] = @IdUser

END




GO