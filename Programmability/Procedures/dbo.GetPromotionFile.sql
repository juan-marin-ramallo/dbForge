SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		Gaston L.
-- Create date: 27/07/2016
-- Description:	SP para obtener el archivo asociado a una promoción comercial
-- =============================================
CREATE PROCEDURE [dbo].[GetPromotionFile]
	@Id [sys].[int]
AS
BEGIN

	SELECT	[FileEncoded]
	FROM	dbo.[Promotion]
	WHERE	[Id] = @Id
END



GO