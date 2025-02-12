﻿SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO

-- =============================================
-- Author:		GL
-- Create date: 04/11/2020
-- Description:	SP para activar un atributo dinamico de productos
-- =============================================
CREATE PROCEDURE [dbo].[EnableProductDynamicAttribute]
(
	 @Id [sys].[int],
	 @IdUser [sys].[int] = 1
)
AS
BEGIN


	UPDATE	[dbo].[ProductDynamicAttribute]
	SET		[Disabled] = 0, [EditedDate] = GETUTCDATE(), [IdUser] = @IdUser
	WHERE	Id = @Id

END




GO