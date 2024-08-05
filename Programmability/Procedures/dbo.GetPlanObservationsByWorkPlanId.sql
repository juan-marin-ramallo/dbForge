SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO

CREATE PROCEDURE [dbo].[GetPlanObservationsByWorkPlanId] 
	@WorkPlanId [sys].[INT]
AS
BEGIN
	SELECT		[Id], [IdWorkPlan], [CreatedDate], [Observation]
	FROM		[dbo].[PlanObservation] PO
	WHERE		PO.IdWorkPlan = @WorkPlanId
	ORDER BY    PO.CreatedDate DESC
END
GO