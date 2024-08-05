SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		GL
-- Create date: 21/12/2015
-- Description:	SP para guardar el array de una imagen de un reporte de activo
-- =============================================
CREATE PROCEDURE [dbo].[SaveAssetReportImage]

    @IdAssetReport [sys].[int],
	@ImageArray [sys].[image],	
	@ResultCode [sys].[smallint] OUT

AS
BEGIN
	
	UPDATE 	[dbo].[AssetReport]
	SET [Image] = @ImageArray
	WHERE [Id] = @IdAssetReport 
	
	SELECT @ResultCode = 0
	
END



GO