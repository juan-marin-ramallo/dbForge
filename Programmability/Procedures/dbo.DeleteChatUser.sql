SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		Jesús Portillo
-- Create date: 06/03/2018
-- Description:	SP para eliminar un usuario de chat
-- =============================================
CREATE PROCEDURE [dbo].[DeleteChatUser] 
	@Id [sys].[int]
AS
BEGIN
	UPDATE	[dbo].[ChatUser]
	SET		[Deleted] = 1, [DeletedDate] = GETUTCDATE()
	WHERE	[Id] = @Id
END



GO