SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		Jesús Portillo
-- Create date: 29/06/2015
-- Description:	SP para obtener todas las configuraciones para uso interno en procesos
-- =============================================
CREATE PROCEDURE [dbo].[GetAllConfigurations]
AS
BEGIN
	SELECT	[Id], [Name], [Description], [Value], [Visible]
	FROM	[dbo].[ConfigurationTranslated] WITH (NOLOCK)
END



GO