﻿SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		GL
-- Create date: 18/04/2016
-- Description:	SP para obtener los posibles motivos en el reporte de stock
-- =============================================
create PROCEDURE [dbo].[GetProductReportOptions]
AS
BEGIN
	SELECT	[Id], [Description]
	FROM	[dbo].[ProductReportOptions]
	WHERE	[Deleted] = 0
END




GO