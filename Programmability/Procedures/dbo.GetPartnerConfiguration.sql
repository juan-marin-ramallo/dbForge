SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		GL
-- Create date: 05/12/2016
-- Description:	SP para obtener los datos del partner
-- =============================================
CREATE PROCEDURE [dbo].[GetPartnerConfiguration]
AS
BEGIN
	SELECT	[Id], [Name], [UrlWeb], [ImageName], [ImageEncoded], [CreatedDate]
	FROM	[dbo].[PartnerConfiguration] WITH (NOLOCK)
END




GO