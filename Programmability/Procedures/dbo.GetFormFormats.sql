SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		Gaston Legnani
-- Create date: 20/07/2017
-- Description:	SP para obtener los formatos para exportar excel
-- =============================================
CREATE PROCEDURE [dbo].[GetFormFormats]
AS
BEGIN
	SELECT	[Id], [Name]
	FROM	[dbo].[FormReportFormatElementTranslated] WITH (NOLOCK)
END




GO