﻿SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		GL
-- Create date: 22/09/2016
-- Description:	SP para obtener las imagenes de atributos del reporte de stock
-- =============================================

CREATE PROCEDURE [dbo].[GetProductRefundAttributeImage] 
	@AttributeId [sys].[INT]
AS
BEGIN

	SELECT		P.[ImageEncoded] AS FileEncoded, P.[ImageName], P.[ImageUrl]
	FROM		[dbo].[ProductRefundAttributeValue] P	
	WHERE		P.[Id] = @AttributeId
		
END



GO