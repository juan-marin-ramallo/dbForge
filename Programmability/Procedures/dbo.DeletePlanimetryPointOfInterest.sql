SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		GL
-- Create date: 09/08/2016
-- Description:	SP para eliminar una planimetría de un punto de interés
-- =============================================
CREATE PROCEDURE [dbo].[DeletePlanimetryPointOfInterest](
	@IdPlanimetry [sys].[int]
   ,@IdPointOfInterest [sys].[int]
)
AS 
BEGIN
	DELETE FROM [dbo].[PlanimetryPointOfInterest]
	WHERE [IdPlanimetry] = @IdPlanimetry AND [IdPointOfInterest] = @IdPointOfInterest
END




GO