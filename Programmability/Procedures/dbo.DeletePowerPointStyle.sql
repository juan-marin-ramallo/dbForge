SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO

-- =============================================
-- Author:		Jesús Portillo
-- Create date: 13/05/2020
-- Description:	SP para eliminar un estilo de powerpoint
-- =============================================
CREATE PROCEDURE [dbo].[DeletePowerPointStyle]
(
	@Id [sys].[int]
)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	UPDATE	[dbo].[PowerPointStyle]
	SET		[Deleted] = 1
		   ,[DeletedDate] = GETUTCDATE()
	WHERE	[Id] = @Id
END


GO