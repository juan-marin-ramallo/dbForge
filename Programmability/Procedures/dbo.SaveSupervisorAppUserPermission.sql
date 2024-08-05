SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SaveSupervisorAppUserPermission]
	 @IdUser int
	,@IdPermission int
AS
BEGIN
	
	INSERT INTO [dbo].[UserSupervisorAppPermission] ([IdUser], [IdSupervisorAppPermission])
	VALUES (@IdUser, @IdPermission)

END
GO