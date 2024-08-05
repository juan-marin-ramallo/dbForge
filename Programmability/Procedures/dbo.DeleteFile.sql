SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO

-- =============================================
-- Author:		GL
-- Create date: 01/09/2015
-- Description:	SP para eliminar un archivo
-- =============================================
create PROCEDURE [dbo].[DeleteFile]
(
	 @IdFile [sys].[INT] = NULL
)
AS
BEGIN

	UPDATE dbo.[File] 
	SET Deleted = 'True'
	WHERE Id = @IdFile 
	
	

END





GO