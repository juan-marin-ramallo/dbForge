SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		Gaston L.
-- Create date: 27/07/2016
-- Description:	SP para obtener el archivo asociado a una promoción comercial
-- =============================================
CREATE PROCEDURE [dbo].[GetSynchronizationTypes]
AS
BEGIN
	SELECT	[Code], [Text]
	FROM	dbo.[SynchronizationTypeTranslated] WITH (NOLOCK)
	ORDER BY [Code] ASC
END



GO