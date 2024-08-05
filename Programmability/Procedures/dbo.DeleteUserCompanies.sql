SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO

-- =============================================
-- Author:		gl
-- Create date: 23/07/2019
-- Description:	SP para eliminar las compañias de un usuario
-- =============================================
create PROCEDURE [dbo].[DeleteUserCompanies]
(
	 @IdUser [sys].[int]
)
AS
BEGIN
	DELETE FROM	[dbo].[UserCompany]
	WHERE		IdUser = @IdUser
END





GO