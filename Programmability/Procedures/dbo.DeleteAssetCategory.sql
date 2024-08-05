SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		GL
-- Create date: <Create Date,,>
-- Description:	Elimina una categorìa de activos
-- =============================================
CREATE PROCEDURE [dbo].[DeleteAssetCategory]
	@Id int
AS
BEGIN
	
	UPDATE [dbo].[AssetCategory]
	SET [IdCategoryFather] = NULL
	WHERE [IdCategoryFather] = @Id

	UPDATE [dbo].[AssetCategory]
	SET [Deleted] = 1
	WHERE [Id] = @Id

	UPDATE [dbo].[Asset]
	SET [IdCategory] = NULL
	WHERE [IdCategory] = @Id

	UPDATE [dbo].[Asset]
	SET [IdSubCategory] = NULL
	WHERE [IdSubCategory] = @Id

END
GO