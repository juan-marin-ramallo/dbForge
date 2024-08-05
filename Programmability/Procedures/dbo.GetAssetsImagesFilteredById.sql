SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[GetAssetsImagesFilteredById]
	@Ids [sys].[VARCHAR](1000) = NULL 
AS 
    SELECT		Id, ImageArray
    FROM		dbo.[Asset]
    WHERE		((@Ids is null) OR dbo.CheckVarcharInList(Id, @Ids)=1)  AND Deleted=0
	



GO