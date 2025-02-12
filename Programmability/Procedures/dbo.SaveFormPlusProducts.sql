﻿SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		Jesús Portillo
-- Create date: 20/03/2023
-- Description:	SP para guardar productos de
--				un formulario plus
-- =============================================
CREATE PROCEDURE [dbo].[SaveFormPlusProducts]
	 @IdFormPlus [sys].[int]
	,@ProductIds [dbo].[IdTableType] READONLY
AS
BEGIN
	INSERT INTO [dbo].[FormPlusProduct]([IdFormPlus], [IdProduct])
	SELECT	@IdFormPlus, [Id]
	FROM	@ProductIds
END
GO