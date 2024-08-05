SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO

CREATE PROCEDURE [dbo].[DeleteMeetingGuest]
    @Id INT
   ,@IdMeeting [sys].[int]
AS 
BEGIN
    SET NOCOUNT ON;
    UPDATE	[dbo].[MeetingGuest]
	SET		[Deleted] = 1
	WHERE	[Id] = @Id

	UPDATE	[dbo].[Meeting]
	SET		[Synced] = 0,
			[SyncType] = 2 -- Outlook Guests
	WHERE	[Id] = @IdMeeting
END

GO