SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		Jesús Portillo
-- Create date: 28/05/2020
-- Description:	SP para obtener los tags
-- =============================================
CREATE PROCEDURE [dbo].[GetTags](
	@IncludeDeleted [sys].[bit] = 0
)AS
BEGIN
	SELECT		[Id], [Name], [Deleted]
	FROM		[dbo].[Tag]
	WHERE		@IncludeDeleted = 1 OR [Deleted] = 0
	ORDER BY	[Deleted] asc, [Name] asc
END
GO