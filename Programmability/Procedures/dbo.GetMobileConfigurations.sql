SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		Jesús Portillo
-- Create date: 01/08/2016
-- Description:	SP para obtener las configuraciones utilizadas por la app mobile de coordenadas
-- =============================================
CREATE PROCEDURE [dbo].[GetMobileConfigurations]
AS
BEGIN
	SELECT	[Id], [Name], [Description], [Value], [Visible]
	FROM	[dbo].[ConfigurationTranslated] WITH (NOLOCK)
	WHERE	[Id] IN (2, 3) --TiempoTomaCoordenadas y TiempoEnvioCoordenadas
END




GO