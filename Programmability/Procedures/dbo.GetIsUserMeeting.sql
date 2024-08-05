SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[GetIsUserMeeting]
     @Id [sys].[int]
    ,@IdUser [sys].[int]
AS
BEGIN
    SELECT	1
    FROM	[dbo].[Meeting] WITH (NOLOCK)
    WHERE   [Id] = @Id
			AND [UserId] = @IdUser
END
GO