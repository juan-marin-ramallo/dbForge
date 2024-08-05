SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		Jesús Portillo
-- Create date: 25/08/2023 (Independence day!)
-- Description:	SP para obtener los turnos de
--              trabajo de una persona de
--              interés
-- =============================================
CREATE PROCEDURE [dbo].[GetPersonOfInterestWorkShifts]
    @IdPersonOfInterest [sys].[int]
AS
BEGIN
    SELECT  [IdPersonOfInterest], [IdDayOfWeek], [IdWorkShift], [IdRestShift]
    FROM    [dbo].[PersonOfInterestWorkShift] WITH (NOLOCK)
	WHERE	[IdPersonOfInterest] = @IdPersonOfInterest
            AND [Deleted] = 0;
END
GO