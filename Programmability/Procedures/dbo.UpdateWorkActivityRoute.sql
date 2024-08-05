SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO

-- =============================================
-- Author:		NR
-- Create date: 10/03/2017
-- Description:	SP para guardar un plan
-- =============================================
CREATE PROCEDURE [dbo].[UpdateWorkActivityRoute]
	 @RPOIId [sys].[int],
	 @Date [sys].[datetime]
AS
BEGIN

	BEGIN 
		update dbo.RouteDetail
		set RouteDate = @Date
		where IdRoutePointOfInterest = @RPOIId

	END

END


GO