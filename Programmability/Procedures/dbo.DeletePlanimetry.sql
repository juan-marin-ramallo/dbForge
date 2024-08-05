SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		Gastón Legnani
-- Create date: 09/08/2016
-- Description:	SP para eliminar una planimetria
-- =============================================
CREATE PROCEDURE [dbo].[DeletePlanimetry] 
	@Id [sys].[int]
AS
BEGIN
	UPDATE	[dbo].[Planimetry]
	SET		[Deleted] = 1, [DeletedDate] = GETUTCDATE()
	WHERE	[Id] = @Id
END



GO