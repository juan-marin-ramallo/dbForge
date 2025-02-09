﻿SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		Jesús Portillo
-- Create date: 01/07/2021
-- Description:	SP para eliminar asociación entre
--				una categoría de producto y una
--				marca de producto
-- =============================================
CREATE PROCEDURE [dbo].[DeleteProductBrandProductCategory]
(
	 @IdProductBrand [sys].[int]
	,@IdProductCategory [sys].[int]
)
AS
BEGIN
	DELETE FROM [dbo].[ProductBrandProductCategory]
	WHERE 		[IdProductBrand] = @IdProductBrand
				AND [IdProductCategory] = @IdProductCategory
END
GO