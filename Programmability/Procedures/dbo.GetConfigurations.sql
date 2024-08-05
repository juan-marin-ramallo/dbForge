SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		Jesús Portillo
-- Create date: 28/09/2012
-- Description:	SP para obtener las configuraciones
-- =============================================
CREATE PROCEDURE [dbo].[GetConfigurations]
AS
BEGIN
	SELECT	[Id], [Name], [Description], [HelpMessage], [Value], [Visible]
	FROM	[dbo].[ConfigurationTranslated] WITH (NOLOCK)
END
GO