SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		GL
-- Create date: 26/07/17
-- Description:	SP para actualizar un formato de excel para el reporte
-- =============================================
CREATE PROCEDURE [dbo].[UpdateFormFormatReport]
(
	@IdFormat [int],
	@Options [ExcelFormatElement] READONLY
)
AS
BEGIN

	IF EXISTS (SELECT 1 FROM [dbo].[FormReportFormatElement] WHERE [Id] = @IdFormat)
	BEGIN

		DELETE FROM [dbo].[FormReportFormatElementOptions]
		WHERE [IdFormatElement] = @IdFormat 

		INSERT INTO [dbo].[FormReportFormatElementOptions]
				   ([IdFormatElement]
				   ,[IdFormatOptions])
		 SELECT @IdFormat, [IdOption]
		 FROM @Options

		 SELECT @IdFormat
	END
END




GO