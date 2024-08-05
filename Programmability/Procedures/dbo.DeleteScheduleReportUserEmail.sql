SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[DeleteScheduleReportUserEmail](
    @IdScheduleReport [sys].[int]
   ,@Email [sys].[varchar](100)
)
AS 
BEGIN

	DELETE FROM [dbo].[ScheduleReportUserEmail]
	WHERE [IdScheduleReport] = @IdScheduleReport AND [Email] = @Email

END




GO