﻿SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
create PROCEDURE [dbo].[GetProductPointOfInterestChange] (
	 
	 @IdPointOfInterest [sys].[INT]
	,@LastUpdatedDate [sys].[datetime]
	,@Result [sys].[INT] OUT
)
AS
BEGIN

	SET @Result = 0
	IF EXISTS (SELECT 1 FROM [dbo].[ProductPointOfInterestChangeLog] 
				WHERE [IdPointOfInterest] = @IdPointOfInterest AND [LastUpdatedDate] > @LastUpdatedDate)
	BEGIN
		SET @Result = 1
	END
	ELSE
	BEGIN
		SET @Result = 0
	END
END


GO