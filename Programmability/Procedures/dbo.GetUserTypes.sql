SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		Gaston Legnani
-- Create date: 22/05/2015
-- Description:	SP para obtener los tipos de usuarios
-- =============================================
CREATE PROCEDURE [dbo].[GetUserTypes]
AS
BEGIN
	SELECT	[Id], [Description]
	FROM	[dbo].[UserTypeTranslated] WITH (NOLOCK)
END




GO