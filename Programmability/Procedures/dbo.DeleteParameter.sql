SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO


-- =============================================
-- Author:		nr
-- Create date: 21/12/2016
-- Description:	SP para eliminar un parameter
-- =============================================
CREATE PROCEDURE [dbo].[DeleteParameter]
(
	 @Id [sys].[int]
)
AS
BEGIN
		UPDATE	[dbo].Parameter		
		SET		[Deleted] = 1 		
		WHERE	[Id] = @Id
END


GO