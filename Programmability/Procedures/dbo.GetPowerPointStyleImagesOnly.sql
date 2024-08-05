SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		Jesús Portillo
-- Create date: 15/05/2020
-- Description:	SP para obtener las imágenes de un estilo de powerpoint
-- =============================================
CREATE PROCEDURE [dbo].[GetPowerPointStyleImagesOnly]
(
	@Id [sys].[int]
)
AS
BEGIN
	SELECT	[Id], [BackgroundImageName], [BackgroundImageUrl],
			[FooterLeftImageName], [FooterLeftImageUrl],
			[FooterRightImageName], [FooterRightImageUrl]
	FROM	[dbo].[PowerPointStyle] WITH (NOLOCK)
	WHERE	[Id] = @Id
END
GO