﻿SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author: Cristian Barbarini
-- Create date: 05/10/2022
-- Description: SP para eliminar las metas de personas
-- =============================================
CREATE PROCEDURE [dbo].[DeletePersonCustomAttributes]
(
	@Id INT
)
AS
BEGIN
	UPDATE [dbo].[PersonCustomAttribute] SET [Deleted] = 1 WHERE [Id] = @Id;
END
GO