﻿SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DeleteCatalogProduct]
	 @IdCatalog [int]
    ,@IdProduct [int]
AS
BEGIN 
	DELETE FROM CatalogProduct
	WHERE [IdCatalog] = @IdCatalog
	  AND [IdProduct] = @IdProduct
END
GO