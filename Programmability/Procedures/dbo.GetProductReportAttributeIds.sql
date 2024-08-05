SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetProductReportAttributeIds]
	@IdSection int
AS
BEGIN
	
	SELECT A.[Id]
	FROM [dbo].[ProductReportAttribute] A
	WHERE A.[IdProductReportSection] = @IdSection
	  AND A.[Deleted] = 0
	ORDER BY A.[Order] ASC

END
GO