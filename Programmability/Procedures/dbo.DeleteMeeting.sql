SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO

-- =============================================
-- Author:		NR
-- Create date: 10/03/2017
-- Description:	SP para guardar un plan
-- =============================================
CREATE PROCEDURE [dbo].[DeleteMeeting]
    @Id [sys].[INT] 

AS
BEGIN
    Update [dbo].Meeting
    set [Deleted] = 1,
		[Synced] = 0,
		[SyncType] = 4 -- Outlook Delete
    where Id = @Id and ActualStart is null


	Update dbo.MeetingGuest
	set [Deleted] = 1
	where MeetingId = 
	(select Id from dbo.Meeting where Id = @Id and ActualStart is null)

	SELECT MicrosoftEventId
	FROM [dbo].[Meeting]
    where Id = @Id and ActualStart is null

END;


GO