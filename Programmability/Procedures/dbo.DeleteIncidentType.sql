SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO

-- =============================================
-- Author:		Matias Corso
-- Create date: 18/10/2016
-- Description:	SP para eliminar un tipo de observación
-- =============================================
CREATE PROCEDURE [dbo].[DeleteIncidentType]
(
	 @Id [sys].[int]
)
AS
BEGIN
		UPDATE	[dbo].[IncidentType]
		
		SET		[EditedDate] = GETUTCDATE(),
				[Deleted] = 1
 		
		WHERE	 [Id] = @Id

END

GO