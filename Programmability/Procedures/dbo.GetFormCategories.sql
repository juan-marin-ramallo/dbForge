﻿SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		Gastón Legnani
-- Create date: 06/01/2016
-- Description:	SP para obtener las categorias disponibles para los formularios
-- =============================================

CREATE PROCEDURE [dbo].[GetFormCategories]

AS
BEGIN
	SELECT	FC.[Id], FC.[Name], FC.[Description], FC.[Deleted]
	FROM	[dbo].[FormCategory] FC
	WHERE FC.Deleted = 0
	ORDER BY 	FC.[Name]
END



GO