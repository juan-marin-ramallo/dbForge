﻿SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		Diego Cáceres
-- Create date: 08/10/2014
-- Description:	SP para activar un formulario
-- =============================================
CREATE PROCEDURE [dbo].[ActivateForm] 
	@Id [sys].[int]
AS
BEGIN
	UPDATE	[dbo].[Form]
	SET		[Deleted] = 0, [DeletedDate] = null
	WHERE	[Id] = @Id
END



GO