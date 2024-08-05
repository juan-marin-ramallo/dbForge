SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO

-- =============================================
-- Author:		Leo Repetto
-- Create date: 20/11/2012
-- Description:	SP para eliminar los departamentos de un usuario
-- =============================================
create PROCEDURE [dbo].[DeleteUserZone]
(
	 @IdUser [sys].[int]
)
AS
BEGIN
	DELETE FROM	[dbo].[UserZone]
	WHERE		IdUser = @IdUser
END





GO