SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DeleteCatalogPointOfInterest]
	 @IdPointOfInterest [int]
	,@IdCatalog [int]
AS
BEGIN
	DECLARE @Now [sys].[datetime]
	SET @Now = GETUTCDATE()

	DELETE FROM dbo.[CatalogPointOfInterest]
	WHERE [IdPointOfInterest] = @IdPointOfInterest
	  AND [IdCatalog] = @IdCatalog

	DELETE FROM dbo.[ProductPointOfInterest] 
	WHERE [IdCatalog] = @IdCatalog AND [IdPointOfInterest] = @IdPointOfInterest

	UPDATE pcl
	SET		pcl.[LastUpdatedDate] = @Now
	from	[dbo].[ProductPointOfInterestChangeLog] pcl
	WHERE pcl.IdPointOfInterest= @IdPointOfInterest
END
GO