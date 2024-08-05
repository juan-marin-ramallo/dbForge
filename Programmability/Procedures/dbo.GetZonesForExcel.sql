SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author: Cristian Barbarini
-- Create date: 03/10/2022
-- Description: SP para obtener las zonas por Id
-- =============================================
CREATE PROCEDURE [dbo].[GetZonesForExcel]
(
	@IdsPersonOfInterestZone VARCHAR(MAX) = NULL
)
AS
BEGIN
	SELECT z.Id, z.Description
	FROM ZoneTranslated z WITH (NOLOCK)
	WHERE (@IdsPersonOfInterestZone IS NULL OR dbo.CheckValueInList(z.Id, @IdsPersonOfInterestZone) = 1)
END
GO