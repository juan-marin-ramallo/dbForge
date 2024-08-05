SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetFormAssignedPointsApi]
	 @IdForms varchar(max) = NULL
	,@IdUser int = NULL
AS
BEGIN
	IF @IdForms IS NULL
	BEGIN
		SELECT A.[IdPointOfInterest], A.[IdForm]
		FROM [dbo].[AssignedForm] A WITH(NOLOCK)
		WHERE A.[Deleted] = 0
		GROUP BY  A.[IdPointOfInterest], A.[IdForm]
	END
	ELSE
	BEGIN
		SELECT A.[IdPointOfInterest], A.[IdForm]
		FROM [dbo].[AssignedForm] A WITH(NOLOCK)
		WHERE ((@IdForms IS NULL) OR (dbo.[CheckValueInList](A.[IdForm], @IdForms) = 1)) AND A.[Deleted] = 0
		GROUP BY  A.[IdPointOfInterest], A.[IdForm]
	END
END
GO