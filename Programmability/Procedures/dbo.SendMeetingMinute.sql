SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO

CREATE PROCEDURE [dbo].[SendMeetingMinute]
   @Id INT
AS 
BEGIN
    SET NOCOUNT ON;
    UPDATE	[dbo].[Meeting]
	SET		[MinuteSent] = 1
	WHERE	[Id] = @Id
END

GO