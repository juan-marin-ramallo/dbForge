SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetPossibleProductDynamicAttributes]
 @OnlyActive bit = 0
AS
BEGIN
	
	SELECT	C.[Id], C.[Name], C.[Description], C.IdValueType, c.[ColumnName]
	FROM	[dbo].[ProductDynamicAttribute] C	
	WHERE	((@OnlyActive = 0) OR (C.[Disabled] = 0 and C.[Deleted] = 0))
	ORDER BY C.[Id]
END
GO