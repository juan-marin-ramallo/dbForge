﻿SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		GL
-- Create date: 15/11/2018
-- Description:	SP para obtener las imagenes de atributos del reporte de activos
-- =============================================

CREATE PROCEDURE [dbo].[GetAssetReportAttributeImage] 
	@AttributeId [sys].[INT]
AS
BEGIN

	SELECT		P.[ImageEncoded] AS FileEncoded, P.[ImageName], P.[ImageUrl]
	FROM		[dbo].[AssetReportAttributeValue] P	
	WHERE		P.[Id] = @AttributeId
		
END



GO