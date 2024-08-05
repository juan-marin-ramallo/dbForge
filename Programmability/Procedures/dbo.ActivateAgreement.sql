SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		Gastón Legnani
-- Create date: 01/08/2016
-- Description:	SP para activar un acuerdo o contrato
-- =============================================
CREATE PROCEDURE [dbo].[ActivateAgreement] 
	@Id [sys].[int]
AS
BEGIN
	UPDATE	[dbo].[Agreement]
	SET		[Deleted] = 0, [DeletedDate] = NULL
	WHERE	[Id] = @Id
END



GO