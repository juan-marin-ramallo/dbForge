SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO

-- =============================================
-- Author:		GL
-- Create date: 14/07/2017
-- Description:	SP para eliminar los permisos de un tipo de usuario
-- =============================================
CREATE PROCEDURE [dbo].[DeleteUserTypePermissions]
(
	 @IdUserType [sys].[int]
)
AS
BEGIN
	DELETE FROM	[dbo].[UserTypePermission]
	WHERE		IdUserType = @IdUserType
END





GO