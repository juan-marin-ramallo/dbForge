SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[GetProductsImagesFilteredById]
 
	@Ids varchar(max) = null
	 
AS 

    SET NOCOUNT ON;
    SELECT Id, ImageArray
    FROM dbo.Product
    WHERE ((@Ids is null) OR dbo.CheckVarcharInList (Id, @Ids)=1)  AND
		  Deleted=0
	



GO