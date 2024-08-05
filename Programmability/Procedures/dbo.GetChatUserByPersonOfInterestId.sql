SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		Jesús Portillo
-- Create date: 05/03/2018
-- Description:	SP para obtener el usuario de chat en base a la persona de interés
-- =============================================
CREATE PROCEDURE [dbo].[GetChatUserByPersonOfInterestId]
(
	@IdPersonOfInterest [sys].[int]
)
AS
BEGIN
	SELECT	[Id], [IdUser], [UserId], [DisplayName], [ImageLink], [Deleted]
	FROM	[dbo].[ChatUser] WITH (NOLOCK)
	WHERE	[IdPersonOfInterest] = @IdPersonOfInterest
END




GO