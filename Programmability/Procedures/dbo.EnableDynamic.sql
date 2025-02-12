﻿SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		Juan Marin Ramallo
-- Create date: 12/11/2023
-- Description:	Activa una dinamica
-- =============================================
CREATE PROCEDURE [dbo].[EnableDynamic]
	@Id int
AS
BEGIN
	
		UPDATE	[dbo].[Dynamic]
		SET		[Disabled] = 0
		WHERE	[Id] = @Id
END
GO