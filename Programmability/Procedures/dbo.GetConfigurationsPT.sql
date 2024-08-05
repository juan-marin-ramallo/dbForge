SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		Leo Repeto
-- Create date: 28/06/2014
-- Description:	SP para obtener las configuraciones
-- =============================================
CREATE PROCEDURE [dbo].[GetConfigurationsPT]
AS
BEGIN
	SELECT	[Id], [Name], [DescriptionPT], [Value], [Visible]
	FROM	[dbo].[ConfigurationTranslated] WITH (NOLOCK)

END



GO