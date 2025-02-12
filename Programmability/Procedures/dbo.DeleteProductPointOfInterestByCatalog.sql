﻿SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[DeleteProductPointOfInterestByCatalog](
   @IdProduct [sys].[int]
   ,@IdPointOfInterest [sys].[int]
   ,@IdCatalog [sys].[int]
)
AS 
BEGIN

	DELETE FROM [dbo].[ProductPointOfInterest]
	WHERE [IdProduct] = @IdProduct AND [IdPointOfInterest] = @IdPointOfInterest AND [IdCatalog] = @IdCatalog

	EXEC [dbo].[SaveOrUpdateProductPointOInterestChangeLog] @IdPointOfInterest = @IdPointOfInterest	
END




GO