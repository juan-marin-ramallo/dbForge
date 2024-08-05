SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		Gastón Legnani
-- Create date: 01/08/2016
-- Description:	SP para eliminar un contrato u acuerdo
-- =============================================
CREATE PROCEDURE [dbo].[DeleteAgreement] 
	@Id [sys].[int]
AS
BEGIN
	UPDATE	[dbo].[Agreement]
	SET		[Deleted] = 1, [DeletedDate] = GETUTCDATE()
	WHERE	[Id] = @Id
END



GO