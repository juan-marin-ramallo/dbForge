﻿SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		Juan Marin Ramallo
-- Create date: 12/11/2023
-- Description:	Desactiva una dinamica
-- =============================================
CREATE PROCEDURE [dbo].[DisableDynamic]
	@Id int
AS
BEGIN
	
		UPDATE	[dbo].[Dynamic]
		SET		[Disabled] = 1
		WHERE	[Id] = @Id
END
GO