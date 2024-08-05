SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:Cbarbarini
-- Create date: 04/11/2021
-- Description: SP encargado de obtener las secciones por catalogo
-- =============================================
CREATE PROCEDURE [dbo].[GetCatalogSectionIds]
	@IdCatalog [int]
AS
BEGIN
	SELECT CP.IdProductReportSection AS Id, S.Name
	FROM CatalogProductReportSection CP
	LEFT JOIN ProductReportSection S ON S.Id = CP.IdProductReportSection
	WHERE CP.IdCatalog = @IdCatalog
END
GO