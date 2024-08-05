SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		Gastón Legnani
-- Create date: 26/07/2016
-- Description:	SP para eliminar una promoción
-- =============================================
CREATE PROCEDURE [dbo].[DeletePromotion] 
	@Id [sys].[int]
AS
BEGIN
	UPDATE	[dbo].[Promotion]
	SET		[Deleted] = 1, [DeletedDate] = GETUTCDATE()
	WHERE	[Id] = @Id
END



GO