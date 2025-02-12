﻿SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		Jesús Portillo
-- Create date: 28/02/2018
-- Description:	SP para obtener el usuario de chat en base al usuario
-- =============================================
CREATE PROCEDURE [dbo].[GetChatUserByUserId]
(
	@IdUser [sys].[int]
)
AS
BEGIN
	SELECT	[Id], [IdUser], [UserId], [DisplayName], [ImageLink], [Deleted]
	FROM	[dbo].[ChatUser] WITH (NOLOCK)
	WHERE	[IdUser] = @IdUser
END




GO