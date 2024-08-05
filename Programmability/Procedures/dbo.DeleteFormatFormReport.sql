SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		gl
-- Create date: 26/07/2017
-- Description:	SP para eliminar un formato exce para el form report
-- =============================================
CREATE PROCEDURE [dbo].[DeleteFormatFormReport]	
	 @IdFormat [sys].[int]
AS
BEGIN

	DELETE FROM [dbo].[FormReportFormatElementOptions]
	WHERE [IdFormatElement] = @IdFormat
	
	DELETE FROM [dbo].[FormReportFormatElement]
	WHERE [Id] = @IdFormat	
END



GO