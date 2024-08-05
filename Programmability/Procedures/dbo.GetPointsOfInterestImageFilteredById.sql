SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[GetPointsOfInterestImageFilteredById]
	@Ids varchar(max) = null	 
AS 

    SET NOCOUNT ON;
    SELECT	[Id], [Image], [ImageUrl]
    FROM	[dbo].[PointOfInterest]
    WHERE ((@Ids is null) OR dbo.CheckVarcharInList ([Id], @Ids)=1)
	



GO