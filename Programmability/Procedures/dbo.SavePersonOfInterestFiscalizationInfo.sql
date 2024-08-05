SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- ==============================================================
-- Author:		Jesús Portillo
-- Create date: 25/08/2023 (Independence day!)
-- Description:	SP para guardar la información de fiscalización
--              Chilena para una persona de interés
-- ==============================================================
CREATE PROCEDURE [dbo].[SavePersonOfInterestFiscalizationInfo]
(
     @IdPersonOfInterest [sys].[int]
	,@IsOutsourced [sys].[bit]
    ,@IdPlaceOfWork [sys].[int] = NULL
    ,@WorkOnSundays [sys].[bit]
    ,@HasSplittedWorkHours [sys].[bit]
    ,@SplittedWorkHoursResolutionNumber [sys].[varchar](50) = NULL
)
AS
BEGIN
    INSERT INTO [dbo].[PersonOfInterestFiscalizationInfo]([IdPersonOfInterest], [IsOutsourced], [IdPlaceOfWork], [WorkOnSundays],
        [HasSplittedWorkHours], [SplittedWorkHoursResolutionNumber], [CreatedDate])
    VALUES (@IdPersonOfInterest, @IsOutsourced, @IdPlaceOfWork, @WorkOnSundays, @HasSplittedWorkHours, @SplittedWorkHoursResolutionNumber, GETUTCDATE());
END
GO