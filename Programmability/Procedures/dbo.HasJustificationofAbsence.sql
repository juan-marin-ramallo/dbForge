SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[HasJustificationofAbsence]
(
 @IdPersonOfInterest INT
)
AS
BEGIN
	DECLARE @Now [sys].[datetime] = GETUTCDATE()

	DECLARE @HasJustificationofAbsence BIT = (SELECT TOP 1 1 
					FROM [PersonOfInterestAbsence] POIA
					WHERE POIA.FromDate = @Now
						AND POIA.IdPersonOfInterest = @IdPersonOfInterest)

	SELECT @HasJustificationofAbsence HasJustificationofAbsence
END
GO