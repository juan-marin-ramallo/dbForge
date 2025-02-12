﻿SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		FS
-- Create date: 28/07/21
-- Description:	SP config relacionada a notificacion
-- =============================================
CREATE PROCEDURE [dbo].[GetNotificationConfiguration]
(
	@NotificationCode [sys].[int]
)
AS
BEGIN
	SELECT	c.[Id], c.[Value]
	FROM	[dbo].[Notification] n
			INNER JOIN [dbo].[Configuration] c ON c.Id = n.IdConfiguration
	WHERE	n.Code = @NotificationCode
END
GO