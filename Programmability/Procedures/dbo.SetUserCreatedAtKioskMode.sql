SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SetUserCreatedAtKioskMode]
	@IdUser int
AS
BEGIN
	
	UPDATE [dbo].[User]
	SET [CreatedAtKioskMode] = 1
	WHERE [Id] = @IdUser

END
GO