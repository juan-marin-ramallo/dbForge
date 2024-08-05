SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		Jesús Portillo
-- Create date: 27/09/2012
-- Description:	SP para obtener el usuario en base al nombre de usuario
-- =============================================
CREATE PROCEDURE [dbo].[GetUserByUserName]
(
	@UserName [sys].[varchar](50)
)
AS
BEGIN
	SELECT	[Id], [Name], [LastName], [Email], [UserName], [FirstTimeLogin], [Type], [Status], 
			[ChangePassword], [SuperAdmin], [IdPersonOfInterest],
			[MicrosoftAccessToken], [MicrosoftAccessTokenExpiration], [MicrosoftRefreshToken], [MicrosoftCalendarId]
	FROM	[dbo].[User] WITH (NOLOCK)
	WHERE	[UserName] = @UserName
END




GO