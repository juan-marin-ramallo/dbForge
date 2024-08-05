SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		FS
-- Create date: 12/07/19
-- Description:	SP para eliminar una campaña
-- =============================================
CREATE PROCEDURE [dbo].[DeleteCampaign] 
	@Id [sys].[int]
AS
BEGIN
	UPDATE	[dbo].[Campaign]
	SET		[Deleted] = 1, [DeletedDate] = GETUTCDATE()
	WHERE	[Id] = @Id
END



GO