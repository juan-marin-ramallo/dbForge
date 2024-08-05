SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		Jesús Portillo
-- Create date: 19/12/2022
-- Description:	SP para obtener las opciones de
--				atributos de Control de SKU del
--				tipo Múltiple Opción
-- =============================================
CREATE PROCEDURE [dbo].[GetProductReportAttributeOptions]
	@IdProductReportAttribute [sys].[int]
AS
BEGIN
	SELECT	[Id], [Text], [IsDefault]
	FROM	[dbo].[ProductReportAttributeOption]
	WHERE	[IdProductReportAttribute] = @IdProductReportAttribute AND
			[Deleted] = 0
END
GO