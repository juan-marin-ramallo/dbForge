SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		Jesús Portillo
-- Create date: 20/03/2023
-- Description:	SP para guardar catálogos de
--				un formulario plus
-- =============================================
CREATE PROCEDURE [dbo].[SaveFormPlusCatalogs]
	 @IdFormPlus [sys].[int]
	,@CatalogIds [dbo].[IdTableType] READONLY
AS
BEGIN
	INSERT INTO [dbo].[FormPlusCatalog]([IdFormPlus], [IdCatalog])
	SELECT	@IdFormPlus, [Id]
	FROM	@CatalogIds
END
GO