SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetCatalogProductIds]
	@IdCatalog [int]
AS
BEGIN

	SELECT Id
	FROM Product P
	JOIN CatalogProduct CP ON CP.[IdProduct] = P.[Id]
	WHERE CP.[IdCatalog] = @IdCatalog

END
GO