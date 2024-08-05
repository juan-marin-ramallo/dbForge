SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO

CREATE PROCEDURE [dbo].[GetWorkActivitiesOptionList]  ( @TypeId [sys].[INT] )
AS
BEGIN
	SELECT		P.[Value] AS WorkActivityTypeId, P.[Name] AS WorkActivityName
	FROM		[dbo].[Parameter] P
	WHERE		p.IdType = @TypeId
	ORDER BY	P.[Order]
END

GO