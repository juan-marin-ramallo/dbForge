﻿SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		Gastón Legnani
-- Create date: 26/07/2016
-- Description:	SP para activar una promoción
-- =============================================
CREATE PROCEDURE [dbo].[ActivatePromotion] 
	@Id [sys].[int]
AS
BEGIN
	UPDATE	[dbo].[Promotion]
	SET		[Deleted] = 0, [DeletedDate] = NULL
	WHERE	[Id] = @Id
END



GO