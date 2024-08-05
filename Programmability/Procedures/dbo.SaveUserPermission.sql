SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO

-- =============================================
-- Author:		Jesús Portillo
-- Create date: 10/01/2013
-- Description:	SP para guardar permiso de un usuario
-- =============================================
CREATE PROCEDURE [dbo].[SaveUserPermission]
(
	 @IdUser [sys].[int]
	,@IdPermission [sys].[smallint]
	,@CanView [sys].[bit] = NULL
	,@CanEdit [sys].[bit] = NULL
	,@CanViewAll [sys].[BIT] = NULL
)
AS
BEGIN
	INSERT INTO [dbo].[UserPermission]([IdUser], [IdPermission], [CanView], [CanEdit], [CanViewAll])
	VALUES		(@IdUser, @IdPermission, @CanView, @CanEdit, @CanViewAll)
END





GO