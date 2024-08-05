SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetCatalogActionIds]
	@IdCatalog [int]
AS
BEGIN
	
	SELECT CP.[IdPersonOfInterestPermission] as Id, P.[Description]
	FROM CatalogPersonOfInterestPermission CP 
	join PersonOfInterestPermission P on P.Id = CP.[IdPersonOfInterestPermission]
	WHERE CP.[IdCatalog] = @IdCatalog

END
GO