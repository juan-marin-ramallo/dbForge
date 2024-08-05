SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetAssetTypes]
	@Ids [sys].[varchar](max) = NULL
AS

BEGIN

	SELECT		A.[Id], A.[Name] AS AssetTypeName, A.[Description], A.[CreatedDate], A.[IdUser], U.[Name], U.[LastName], A.[Deleted]
	
	FROM		[dbo].[AssetType] A
				INNER JOIN [dbo].[User] U ON U.[Id] = A.[IdUser]
	
	WHERE		A.[Deleted] = 0  AND
				((@Ids IS NULL) OR (dbo.CheckValueInList(A.[Id], @Ids) = 1))	
	
	ORDER BY 	A.[Name]

	
END
GO