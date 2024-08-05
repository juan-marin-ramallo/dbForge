SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DeleteSupervisorAppUserPermissions]
	@IdUser int
AS
BEGIN
	
	DELETE FROM	[dbo].[UserSupervisorAppPermission]
	WHERE		IdUser = @IdUser

END
GO