﻿SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetProductReportAttributeOptionIds]
	@IdAttribute int
AS
BEGIN
	
	SELECT O.[Id]
	FROM [dbo].[ProductReportAttributeOption] O
	WHERE O.[IdProductReportAttribute] = @IdAttribute
	  AND O.[Deleted] = 0

END
GO