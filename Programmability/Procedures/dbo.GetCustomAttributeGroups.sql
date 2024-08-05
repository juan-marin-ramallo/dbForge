SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		gl
-- Create date: 25/03/2018
-- Description:	Devuelve agrupaciones de atributos personalizados para puntos
-- =============================================
create PROCEDURE [dbo].[GetCustomAttributeGroups]
AS
BEGIN

	SELECT	C.[Id], C.[Name], C.[CreatedDate],C.[IdUser],C.[Deleted]
	FROM	[dbo].[CustomAttributeGroup] C
	WHERE	C.[Deleted] = 0
END
GO