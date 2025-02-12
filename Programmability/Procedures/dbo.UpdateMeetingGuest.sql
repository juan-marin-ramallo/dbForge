﻿SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO

CREATE PROCEDURE [dbo].[UpdateMeetingGuest]
   @Id INT,
   @CanEdit BIT = NULL,
   @Attended BIT = NULL
AS 
BEGIN
    SET NOCOUNT ON;
    UPDATE	[dbo].[MeetingGuest]
	SET		[CanEdit] = CASE WHEN @CanEdit IS NOT NULL THEN @CanEdit ELSE CanEdit END,
			[Attended] = CASE WHEN @Attended IS NOT NULL THEN @Attended ELSE Attended END
	WHERE	[Id] = @Id
END

GO